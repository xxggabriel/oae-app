import 'package:flutter/material.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/ui/pages/event/event_screen.dart';
import 'package:oea_app/ui/pages/event/events_screen.dart';
import 'package:oea_app/ui/pages/home/home_screen.dart';
import 'package:oea_app/ui/pages/setting/setting_screen.dart';
import 'package:oea_app/ui/pages/splash/splash_screen.dart';
import 'package:oea_app/utils/hex_color.dart';

void main() async {
  await setupLocator();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(
    //   primaryColor: HexColor("#000000"),
    // ),
    // home: SplashScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/home': (context) => HomeScreen(),
      '/events': (context) => EventsScreen(),
      '/event': (context) => EventScreen(),
      '/settings': (context) => SettingScreen(),
    },
  ));
}
