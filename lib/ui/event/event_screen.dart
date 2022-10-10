import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final event = (ModalRoute.of(context)?.settings.arguments) as EventModel;

    return LayoutBase(
      child: Column(children: [
        (() {
          if (event.image == null) {
            return Container();
          }
          return Container(
            child: Image.network(
              event.image ?? "",
            ),
          );
        }()),
        CardWidget(
          child: Text(
            event.title,
            overflow: TextOverflow.fade,
            style: new TextStyle(
              fontSize: 13.0,
              fontFamily: 'Roboto',
              color: new Color(0xFF212121),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            CardWidget(
              child: Column(
                children: [
                  Text(
                    "Data",
                    style: new TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: new Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    event.startDate != null
                        ? DateFormat('M/d/y').format(event.startDate!)
                        : "---",
                  ),
                ],
              ),
              width: (MediaQuery.of(context).size.width - 60) / 3,
            ),
            CardWidget(
              child: Column(
                children: [
                  // Text("Horário"),
                  Text(
                    event.startDate != null
                        ? DateFormat('H:mm').format(event.startDate!)
                        : "---",
                    style: new TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: new Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    event.endDate != null
                        ? DateFormat('H:mm').format(event.endDate!)
                        : "---",
                    style: new TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: new Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              width: (MediaQuery.of(context).size.width - 60) / 3,
            ),
            CardWidget(
              child: Column(
                children: [
                  Text(
                    "Qtd. Horas",
                    style: new TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: new Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(event.expectedHoursToReceive != null
                      ? event.expectedHoursToReceive.toString()
                      : "---"),
                ],
              ),
              width: (MediaQuery.of(context).size.width - 60) / 3,
            ),
          ],
        ),
        CardWidget(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Text(
                  "Local:",
                  style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Roboto',
                    color: new Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(event.place != null ? event.place.toString() : "---"),
            ],
          ),
        ),
        event.content != null
            ? CardWidget(child: Text(event.content ?? ''))
            : Container(),
      ]),
    );
  }
}
