import 'dart:async';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/models/cpf_result_model.dart';
import 'package:oea_app/models/user_model.dart';
import 'package:oea_app/network/api_client.dart';
import 'package:oea_app/network/api_response.dart';
import 'package:oea_app/services/shared_service.dart';

enum UserStatus { Uninitialized, Authenticated, Authenticating, Unauthenticated, Registering }

class AuthService {
  UserStatus _status = UserStatus.Uninitialized;
  UserStatus get status => _status;

  CpfResultModel? _cpfResult;

  UserModel? _currentUser;
  UserModel? get currentUser => _currentUser;

  ApiClient _apiClient = locator<ApiClient>();
  SharedService _sharedService = locator<SharedService>();

  final MemCacheStore cacheStore;

  AuthService(this.cacheStore);

  Future<bool> isUserLoggedIn() async {
    String? userToken = await _sharedService.currentUserToken;
    print("CurrentUserToken: $userToken");

    if (userToken == null) return false;

    try {
      ApiResponse<UserModel> response = await _apiClient.pingUser();
      _currentUser = response.data;

      if (_currentUser != null) {
        Sentry.addBreadcrumb(Breadcrumb(message: 'Token Validated'));

        Sentry.configureScope((scope) {
          scope.user = SentryUser(
            id: "${_currentUser!.id}",
            email: "${_currentUser!.email}",
            extras: {
              "token": userToken,
            },
          );
        });

        this.cacheStore.clean();
      }
      return true;
    } catch (e) {
      print(e.toString());
    }

    _sharedService.saveCurrentUserToken(null);
    Sentry.configureScope((scope) {
      scope.user = null;
    });
    this.cacheStore.clean();
    return false;
  }

  void clearCpfResult() {
    _cpfResult = null;
  }

  Future<bool> userNeedsValidation() async {
    if (currentUser?.cpf == null) return false;
    try {
      if (_cpfResult == null) {
        ApiResponse<CpfResultModel> response = await _apiClient.cpfCheck(currentUser!.cpf);
        _cpfResult = response.data;
      }
      return _cpfResult?.userIsActive == 0;
    } catch (e) {
      print(e.toString());
    }

    return false;
  }

  void login(UserModel user) {
    _sharedService.saveCurrentUserToken(user.accessToken);
    _currentUser = user;

    Sentry.configureScope((scope) {
      scope.user = SentryUser(
        id: "${user.id}",
        email: "${user.email}",
        extras: {
          "token": user.accessToken,
        },
      );
    });

    Sentry.addBreadcrumb(Breadcrumb(message: 'User Authenticated', type: "default"));

    clearCpfResult();
  }

  void logout() {
    _sharedService.saveCurrentUserToken(null);
    _currentUser = null;
    this.cacheStore.clean();

    Sentry.addBreadcrumb(Breadcrumb(message: 'User Logged out'));

    clearCpfResult();
  }
}
