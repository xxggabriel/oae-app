import 'package:flutter/material.dart';
import 'package:oea_app/ui/home/widgets/status.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue[600],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            // height: MediaQuery.of(context).size.height - 200,
            height: 160,
            child: const Status()
          ),
        ),
      ],
    );
  }
}
