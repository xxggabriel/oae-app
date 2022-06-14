import 'package:flutter/material.dart';
import 'package:oea_app/ui/event/event_screen.dart';
import 'package:oea_app/ui/events/events_screen.dart';
import 'package:oea_app/ui/home/home_screen.dart';
import 'package:oea_app/ui/splash/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SplashScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/home': (context) => const HomeScreen(),
      '/event' : (context) => const EventScreen(),
      '/events' : (context) => const EventsScreen(),
    },
  ));
}
