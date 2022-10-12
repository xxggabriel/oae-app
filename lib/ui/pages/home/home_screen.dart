import 'package:flutter/material.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/pages/home/widgets/banners.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';
import 'package:oea_app/utils/hex_color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: Container(
        child: Column(
          children: [
            CardWidget(
              child: Container(
                child: Text(
                  "Aplicativo criado pelos alunos de ADS e CCP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SlideBanners(),
            // CardWidget(
            //   child: Text("Devfest 2022"),
            // ),
            Container(
              child: Row(children: [
                CardWidget(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.groups_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Atléticas"),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 70, left: 40),
                        child: Text(
                          "Em breve",
                          style: TextStyle(
                            color: HexColor("#FFFFFF"),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: HexColor("#16305E"),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
