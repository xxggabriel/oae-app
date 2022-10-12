import 'package:flutter/material.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class DefaultAlert extends StatelessWidget {
  final String title;
  final String? description;
  final IconData? icon;

  const DefaultAlert({required this.title, this.icon, this.description});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        children: [
          icon != null
              ? Container(
                  child: Icon(
                    icon,
                    size: 40,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                )
              : Container(),
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          description != null
              ? Container(
                  child: Text(
                    description!,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                )
              : Container(),
        ],
      ),
    );
  }
}
