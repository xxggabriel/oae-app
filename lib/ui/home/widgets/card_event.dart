import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';
import 'package:oea_app/utils/hex_color.dart';

class CardEvent extends StatelessWidget {
  final EventModel event;
  const CardEvent({required this.event});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        children: [
          (() {
            if (this.event.image == null) {
              return Container();
            }
            return Image.network(this.event.image ?? "");
          })(),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width - 60,
            child: Text(
              this.event.title,
              overflow: TextOverflow.fade,
              style: new TextStyle(
                fontSize: 13.0,
                fontFamily: 'Roboto',
                color: new Color(0xFF212121),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 60,
                child: Text(
                  "Aula de Inglês ministrada por alunos de Ciências da Computação e ADS. Aluno Responsável: Guilherme José Oliveira Costa 06/06/2022 - 19:30 às 21:30",
                  overflow: TextOverflow.fade,
                  style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Roboto',
                    color: new Color(0xFF212121),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/event',
                    arguments: this.event,
                  );
                },
                child: Text(
                  'Ver detalhes',
                  style: TextStyle(
                    color: HexColor("#16305E"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
