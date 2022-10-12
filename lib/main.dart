import 'package:flutter/material.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/ui/pages/event/event_screen.dart';
import 'package:oea_app/ui/pages/event/events_screen.dart';
import 'package:oea_app/ui/pages/home/home_screen.dart';
import 'package:oea_app/ui/pages/setting/setting_screen.dart';
import 'package:oea_app/ui/pages/splash/splash_screen.dart';

void main() async {
  await setupLocator();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SplashScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/home': (context) => const HomeScreen(),
      '/events': (context) => const EventsScreen(),
      '/event': (context) => const EventScreen(),
      '/settings': (context) => const SettingScreen(),
    },
  ));
}
