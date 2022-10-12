import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/network/api_client.dart';
import 'package:oea_app/network/api_response.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/pages/home/widgets/card_event.dart';
import 'package:oea_app/ui/pages/home/widgets/top_bar.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';
import 'package:oea_app/ui/widgets/default_alert.dart';
import 'package:oea_app/ui/widgets/loading_widget.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final _apiClient = locator<ApiClient>();
  Future<ApiResponse<List<EventModel>>>? _events;
  @override
  void initState() {
    super.initState();

    _events = _apiClient.findEventsAll();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: Column(
        children: [
          TopBar(),
          CardWidget(
            child: Text("Próximos Eventos"),
          ),
          listEvents()
        ],
      ),
    );
  }

  Widget listEvents() {
    return FutureBuilder(
      future: _events,
      // future: _getData(),
      builder: (BuildContext context,
          AsyncSnapshot<ApiResponse<List<EventModel>>> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text("Press buttom to start");
          case ConnectionState.waiting:
            return LoadingWidget();
          default:
            if (snapshot.hasError) {
              return DefaultAlert(
                title: "Ops...",
                description: "Ocorreu um erro. Tente novamente mais tarde.",
                icon: Icons.error_outline,
              );
            } else {
              if (snapshot.data!.data.length > 0) {
                return Column(
                    children: snapshot.data!.data
                        .map((e) => CardEvent(event: e))
                        .toList());
              } else {
                return DefaultAlert(
                  title: "Nenhum evento cadastrado.",
                  // description: "Ocorreu um erro. Tente novamente mais tarde.",
                  icon: Icons.content_paste_off,
                );
              }
            }
        }
      },
    );
  }
}
