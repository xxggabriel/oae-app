import 'package:flutter/material.dart';
import 'package:oea_app/ui/layout/bottom_navigate_bar.dart';
import 'package:oea_app/utils/hex_color.dart';

class LayoutBase extends StatelessWidget {
  final Widget child;
  LayoutBase({required this.child});

  static const int HEIGHT_TOPBAR = 70;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          bottomNavigationBar: BottomNavigateBar()),
    );
  }
}
