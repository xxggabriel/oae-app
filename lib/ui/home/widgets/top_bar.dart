import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/home/widgets/list_posts.dart';
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
          padding: EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height - 200,
            child: Column(
              children: [Status()],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ListPosts(),
        )
      ],
    );
  }
}
