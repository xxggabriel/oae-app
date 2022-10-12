import 'package:flutter/material.dart';
import 'package:oea_app/utils/hex_color.dart';

class BottomNavigateBar extends StatefulWidget {
  const BottomNavigateBar({super.key});

  @override
  State<BottomNavigateBar> createState() => _BottomNavigateBarState();
}

class _BottomNavigateBarState extends State<BottomNavigateBar> {
  List buttons = [
    true,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
              setState(() {
                buttons[0] = true;
              });
              Navigator.popAndPushNamed(context, '/home');
            },
            icon: Icon(Icons.home),
            color: HexColor("#FFFFFF"),
            isSelected: buttons[0],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                buttons[0] = false;
                buttons[1] = true;
                buttons[2] = false;
              });
              Navigator.popAndPushNamed(context, '/events');
            },
            icon: Icon(Icons.event),
            selectedIcon: Icon(Icons.event),
            color: HexColor("#FFFFFF"),
            focusColor: HexColor("#30D6CA"),
            isSelected: buttons[1],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                buttons[0] = false;
                buttons[1] = false;
                buttons[2] = true;
              });
              Navigator.popAndPushNamed(context, '/settings');
            },
            icon: Icon(Icons.menu),
            color: HexColor("#FFFFFF"),
            isSelected: buttons[2],
          ),
        ],
      ),
    );
  }
}
