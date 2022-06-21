import 'package:flutter/material.dart';

class LayoutBase extends StatelessWidget {
  
  final Widget child;
  LayoutBase({required this.child});

  static const int HEIGHT_TOPBAR = 70;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          elevation: 0,
          centerTitle: true,
          title: Image.asset('assets/images/logo/estacio-logo-white.png',height: 40,),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: this.child
        ));
  }
}
