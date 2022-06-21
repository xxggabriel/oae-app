import 'package:flutter/material.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/network/api_client.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as EventModel;

//     var htmlData = """
// A maior experiência imersiva sobre tecnologia, inovação e empreendedorismo está chegando e será no Shopping Passeio das Águas, em Goiânia

// Bem-vindo a Campus Party! Reunimos estudantes, professores, empresários, empreendedores, desenvolvedores e geeks em um único evento para compartilhar muito conhecimento, fomentar tendências e reescrever o código fonte do mundo.
//     """;

    return LayoutBase(
      child: Column(
        children: [
          args.image == null ? Container() : Image.network(args.image ?? ""),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        args.title,
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
                            Text("COD.: ${args.cod}", 
                              style: TextStyle( 
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("25/07 as 19:30"),
                            Text("28/07 as 21:30"),
                          ],
                        ))
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Ênfase: ${args.emphasis}",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Período: ${args.periodOf} até ${args.periodUntil}",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Local: ${args.place}",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("${args.content}"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
