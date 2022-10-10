import 'package:flutter/material.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/ui/event/event_screen.dart';
import 'package:oea_app/ui/event/events_screen.dart';
import 'package:oea_app/ui/home/home_screen.dart';
import 'package:oea_app/ui/splash/splash_screen.dart';

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
    },
  ));
}
