import 'package:flutter/material.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/ui/home/widgets/card_event.dart';
import 'package:oea_app/ui/home/widgets/top_bar.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: Column(
        children: [
          TopBar(),
          CardWidget(
            child: Text("Próximos Eventos"),
          ),
          CardEvent(
            event: new EventModel(
                id: 1,
                title: "OFICINAS DE INGLÊS PROPOSTAS PELO ALUNO DE CCP E ADS",
                image: null,
                startDate: DateTime.now(),
                endDate: DateTime.now(),
                expectedHoursToReceive: 5,
                place: "Campus ESTAÇÃO",
                content:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          CardEvent(
            event: new EventModel(
                id: 1,
                title: "OFICINAS DE INGLÊS PROPOSTAS PELO ALUNO DE CCP E ADS",
                image: "https://inovaprudente.com.br/img/noticias/1476.jpg",
                startDate: DateTime.now(),
                endDate: DateTime.now(),
                expectedHoursToReceive: 5,
                place: "Campus ESTAÇÃO",
                content:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          )
        ],
      ),
    );
  }
}
