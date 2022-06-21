

import 'package:flutter/material.dart';
import 'package:oea_app/ui/layout/layout_base.dart';

class LoadingWidget extends StatelessWidget {
  final double? height;
  final double? width;
  LoadingWidget({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    double newHeight = this.height ?? MediaQuery.of(context).size.height - LayoutBase.HEIGHT_TOPBAR;
    double newWidth = this.width ?? MediaQuery.of(context).size.width;

    return Container(
      height: newHeight,
      width: newWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.black),
            strokeWidth: 4.0,
          ),
          SizedBox(height: 30,),
          Text("Carregando"),
        ],
      ),
    );
  }
}