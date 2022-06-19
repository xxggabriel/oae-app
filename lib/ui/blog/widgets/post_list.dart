import 'package:flutter/material.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () => {
                    Navigator.of(context).pushNamed('/post', arguments: {"id": index})
                  },
                  child: CardWidget(
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network('https://blog.estacio.br/wp-content/webp-express/webp-images/uploads/2022/05/sites-para-estudar-medicina-780x450.jpeg.webp'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Medicina")
                              ],
                            ),
                            
                            SizedBox(
                              height: 10,
                            ),
                
                            Align(
                              child: Text(
                                "Conheça 6 sites para estudar para o vestibular de Medicina!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Atualmente, o fácil acesso à tecnologia ajuda a alcançar os objetivos, já que há uma infinidade de plataformas de estudo"),
                            )
                            
                            
                          ],
                        ),
                      )
                    ]),
                  ),
                );
              }),
        ));
  }
}
