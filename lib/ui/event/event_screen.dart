import 'package:flutter/material.dart';
import 'package:oea_app/ui/layout/layout_base.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)?.settings.arguments;
    var htmlData = "<h1>OIIII</h1>";

    return LayoutBase(
      hasTop: false,
      child: Column(
        children: [
          Image.network("https://liferay-cdn.estacioprd.net/documents/20124/338300/banner1.jpg/f506bff5-c1bd-d3f1-c95c-4aa9860921cb?t=1655123061323"),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: Text(
                    "EVENTOS ACADÊMICO-CIENTÍFICOS (I JORNADA CIENTÍFICA DE SAÚDE) ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("25/07/2022"),
                        Text("19:30 até 21:30"),
                      ],
                    ))
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Gabriel Oliveira",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(htmlData)),
          ),
        ],
      ),
    );
  }
}
