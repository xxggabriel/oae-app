import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF30D6CA),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logo/estacio-logo-white.png", width: 300,),
          SizedBox(
            height: 15.0,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 11.0,
          ),
        ]),
      ),
    );
  }
}
