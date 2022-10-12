import 'package:flutter/material.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/network/api_client.dart';
import 'package:oea_app/network/api_response.dart';
import 'package:oea_app/ui/layout/layout_base.dart';
import 'package:oea_app/ui/pages/home/widgets/card_event.dart';
import 'package:oea_app/ui/pages/home/widgets/top_bar.dart';
import 'package:oea_app/ui/widgets/card_widget.dart';
import 'package:oea_app/ui/widgets/loading_widget.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _apiClient = locator<ApiClient>();

    var futureBuilder = new FutureBuilder(
      future: _apiClient.findEventsAll(),
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
              return Text("Error: ${snapshot.error}");
              // return defaultMessage(
              //         Text(
              //           "Ocorreu um erro inesperado",
              //           style:
              //               TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         Icons.warning
              //       );
            } else {
              // return Text("Data: ${snapshot.data}");
              if (snapshot.data!.data.length > 0) {
                return Column(
                  children: [
                    for (EventModel event in snapshot.data!.data)
                      CardEvent(event: event)
                  ],
                );
                // return createListView(context, snapshot);
              } else {
                return Text("Não existe nenhum evento cadastrado");
                // return defaultMessage(
                //     Text(
                //       "Não existe nenhum evento cadastrado",
                //       style:
                //           TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                //     ),
                //     Icons.content_paste_off);
              }
            }
        }
      },
    );

    return LayoutBase(
      child: Column(
        children: [
          TopBar(),
          CardWidget(
            child: Text("Próximos Eventos"),
          ),
          futureBuilder
        ],
      ),
    );
  }
}
