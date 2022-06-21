import 'package:flutter/material.dart';
import 'package:oea_app/ui/events/widgets/event_list.dart';
import 'package:oea_app/ui/layout/layout_base.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
        child: EventList()
    );
  }
}
