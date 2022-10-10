import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oea_app/utils/hex_color.dart';

class CardSectionTitle extends StatelessWidget {
  final String title;
  const CardSectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: HexColor("#FFFFFF"),
      ),
    );
  }
}
