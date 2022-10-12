import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ListPosts extends StatelessWidget {
  const ListPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150, right: 10, bottom: 10),
      child: Container(
        height: MediaQuery.of(context).size.height - 240,
        color: Colors.white,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            "https://picsum.photos/320/320?id=$index"),
                      ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("MONITORIA (MONITORIA FESGO 2022.1) ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),

                        Text("Gabriel Oliveira",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                        )),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Seg."),
                        Text("17:00 - 19:30"),
                        SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //       color: Colors.red,
                        //       borderRadius: BorderRadius.circular(20)),
                        //   child: Padding(
                        //     padding: EdgeInsets.all(8),
                        //     child: Text("$index"),
                        //   ),
                        // )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
