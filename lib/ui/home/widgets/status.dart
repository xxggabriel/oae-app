import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categorias"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 100,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.redAccent,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 28,
                            backgroundImage: NetworkImage(
                                "https://picsum.photos/320/320?id=$index"),
                          ),
                        ),
                        const Text("Nome")
                      ],
                    ));
              },
            ),
          ),
        )
      ],
    );
  }
}
