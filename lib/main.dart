import 'package:flutter/material.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/ui/blog/post_screen.dart';
import 'package:oea_app/ui/blog/posts_screen.dart';
import 'package:oea_app/ui/event/event_screen.dart';
import 'package:oea_app/ui/events/events_screen.dart';
import 'package:oea_app/ui/home/home_screen.dart';
import 'package:oea_app/ui/job/job_screen.dart';
import 'package:oea_app/ui/job/jobs_screen.dart';
import 'package:oea_app/ui/splash/splash_screen.dart';

void main() async{

  await setupLocator();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SplashScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/home': (context) => const HomeScreen(),
      '/event' : (context) => const EventScreen(),
      '/events' : (context) => const EventsScreen(),
      '/post' : (context) => const PostScreen(),
      '/posts' : (context) => const PostsScreen(),
      '/job' : (context) => const JobScreen(),
      '/jobs' : (context) => const JobsScreen(),
    },
  ));
}
