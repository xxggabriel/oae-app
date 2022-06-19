import 'package:flutter/material.dart';

class CardWidget extends Container {
  final Widget child;
  
  CardWidget({required this.child, EdgeInsetsGeometry? margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0, // shadow direction: bottom right
          )
        ],
      ),
      child: this.child,
    );
  }
}
