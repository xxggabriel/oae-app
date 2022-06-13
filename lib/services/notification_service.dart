import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:oea_app/app/app.router.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/network/api_client.dart';

class NotificationService {
  final ApiClient apiClient;

  NotificationService(this.apiClient) {
    OneSignal.shared.setRequiresUserPrivacyConsent(true);
    OneSignal.shared.setAppId("13b1096e-cb55-4af1-93c4-ff101dd41368");
  }

  Future promptUserForPushNotificationPermission() async {
    await OneSignal.shared.consentGranted(true);
    OneSignal.shared.promptUserForPushNotificationPermission(fallbackToSettings: true).then((accepted) async {
      var state = await OneSignal.shared.getDeviceState();
      if (accepted && state?.userId != null) {
        registerDevice(state!.userId!);
      }
    });
    setupOneSignal();
  }

  Future setupOneSignal() async {
    OneSignal.shared.setSubscriptionObserver((changes) {
      if (changes.to.isSubscribed && changes.to.userId != null) {
        registerDevice(changes.to.userId!);
      } else if (changes.to.userId != null || changes.from.userId != null) {
        unregisterDevice(changes.to.userId ?? changes.from.userId ?? "");
      }
    });

    OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) async {
      await Future.delayed(Duration(milliseconds: 400));
      locator<NavigationService>().navigateTo(Routes.notificationsScreen);
    });

    OneSignal.shared.setNotificationWillShowInForegroundHandler((OSNotificationReceivedEvent event) {
      event.complete(event.notification);
    });

    OneSignal.shared.setInAppMessageClickedHandler((OSInAppMessageAction action) {
      print("In App Message Clicked: \n${action.jsonRepresentation()}");
    });
  }

  unregisterDevice(String token) async {
    try {
      await apiClient.unregisterDevice(
        token,
      );
    } catch (e) {}
  }

  registerDevice(String token) async {
    var platform = kIsWeb ? 'web' : Platform.operatingSystem;
    PackageInfo _packageInfo = PackageInfo(
      appName: 'Unknown',
      packageName: 'Unknown',
      version: 'Unknown',
      buildNumber: 'Unknown',
      buildSignature: 'Unknown',
    );
    try {
      _packageInfo = await PackageInfo.fromPlatform();
    } catch (e, s) {
      Sentry.captureException(
        e,
        stackTrace: s,
      );
    }

    try {
      await apiClient.registerDevice(
        token,
        "onesignal",
        platform,
        _packageInfo.version,
        Platform.operatingSystemVersion,
      );
    } catch (e) {}
  }
}
