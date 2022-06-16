import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oea_app/app/locator.dart';
import 'package:oea_app/models/event_model.dart';
import 'package:oea_app/network/api_client.dart';
import 'package:oea_app/network/api_response.dart';

class EventList extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  final _apiClient = locator<ApiClient>();
  @override
  Widget build(BuildContext context) {
    var futureBuilder = new FutureBuilder(
      future: _apiClient.findEventsAll(),
      // future: _getData(),
      builder: (BuildContext context,
          AsyncSnapshot<ApiResponse<List<EventModel>>> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text("Press buttom to start");
          case ConnectionState.waiting:
            return loading();
          default:
            if (snapshot.hasError) {
              // return Text("Error: ${snapshot.error}");
              return defaultMessage(
                      Text(
                        "Ocorreu um erro inesperado",
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Icons.warning
                    );
            } else {
              // return Text("Data: ${snapshot.data}");
              if (snapshot.data!.data.length > 0) {
                return createListView(context, snapshot);
              } else {
                return defaultMessage(
                    Text(
                      "Não existe nenhum evento cadastrado",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Icons.content_paste_off);
              }
            }
        }
      },
    );

    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 0, bottom: 10),
      child: Container(
          height: MediaQuery.of(context).size.height - 80,
          color: Colors.white,
          child: futureBuilder),
    );
  }

  Widget createListView(BuildContext context,
      AsyncSnapshot<ApiResponse<List<EventModel>>> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data!.data.length,
        itemBuilder: (BuildContext context, int index) {
          var data = snapshot.data!.data[index];
          return GestureDetector(
              onTap: () =>
                  {Navigator.of(context).pushNamed('/event', arguments: data)},
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0, // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                data.description ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Ênfase: ${data.emphasis}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  )),
                              Text(
                                  "Período: ${data.periodOf} até ${data.periodUntil}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  )),
                              Text("Local: ${data.place}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  )),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "COD.: ${data.cod}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "${DateFormat("d/M/y").format(data.startDate ?? DateTime.now())}",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                                "${DateFormat.Hm().format(data.startDate ?? DateTime.now())} - ${DateFormat.Hm().format(data.endDate ?? DateTime.now())}"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  Widget defaultMessage(Text title, IconData icon) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title,
          Icon(
            icon,
            size: 50,
          )
        ],
      ),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget loading() {
    return Container(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
        strokeWidth: 11.0,
      ),
    );
  }
}
