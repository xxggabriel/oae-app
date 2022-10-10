import 'package:flutter/material.dart';
import 'package:oea_app/utils/hex_color.dart';

class CardWidget extends Container {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? width;

  CardWidget({
    required this.child,
    EdgeInsetsGeometry? this.margin,
    EdgeInsets? this.padding,
    Color? this.backgroundColor,
    double? this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin ?? EdgeInsets.only(top: 20, left: 10, right: 10),
      width: this.width ?? MediaQuery.of(context).size.width,
      child: Padding(
        padding: this.padding ?? const EdgeInsets.all(15),
        child: this.child,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: this.backgroundColor ?? HexColor("#FFFFFF"),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(5.0, 5.0),
            blurRadius: 6.0,
          ),
        ],
      ),
    );
  }
}
