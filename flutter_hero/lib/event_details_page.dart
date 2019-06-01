import 'package:flutter/material.dart';

import './models/event.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;

  EventDetailsPage(this.event);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: Container(
        child: Center(
          child: Text('${event.title}'),
        ),
      ),
    );
  }
}
