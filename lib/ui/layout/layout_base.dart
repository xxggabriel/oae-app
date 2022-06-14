import 'package:flutter/material.dart';
import 'package:oea_app/ui/home/widgets/top_bar.dart';

class LayoutBase extends StatelessWidget {
  final Widget child;
  final bool hasTop;
  LayoutBase({required this.child, this.hasTop = true});

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
          child: Column(
            children: [this.hasTop ? TopBar() : Container(), this.child],
          ),
        ));
  }
}
