import 'package:flutter/material.dart';
import 'package:flutter_hero/event_details_page.dart';

import './models/event.dart';
import './mocks/eventsList.dart';
import './widgets/event_card.dart';

class EventsPage extends StatelessWidget {
  final List<Event> _events = eventsListMock;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(12.0),
          itemCount: _events.length,
          itemBuilder: (context, i) {
            return EventCard(_events[i]);
          }),
    );
  }
}
