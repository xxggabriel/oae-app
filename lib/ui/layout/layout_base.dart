import 'package:flutter/material.dart';
import 'package:oea_app/utils/hex_color.dart';

class LayoutBase extends StatelessWidget {
  final Widget child;
  LayoutBase({required this.child});

  static const int HEIGHT_TOPBAR = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 10,
        backgroundColor: HexColor("30D6CA"),
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo/estacio-logo-white.png',
          height: 40,
        ),
        actions: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.menu),
          //     ),
          //   ],
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: this.child,
      ),
      backgroundColor: HexColor("F2F2F2"),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: HexColor("#16305E"),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/home');
              },
              icon: Icon(Icons.home),
              color: HexColor("#FFFFFF"),
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/events');
              },
              icon: Icon(Icons.event),
              color: HexColor("#FFFFFF"),
              focusColor: HexColor("#30D6CA"),
              isSelected: true,
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/config');
              },
              icon: Icon(Icons.menu),
              color: HexColor("#FFFFFF"),
            ),
          ],
        ),
      ),
    );
  }
}
