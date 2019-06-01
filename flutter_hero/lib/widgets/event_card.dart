import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/event.dart';

class EventCard extends StatelessWidget {
  final Event event;
  EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () =>
            Navigator.pushNamed<bool>(context, '/event/' + event.id),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                child: Text(
                  event.title,
                  style: TextStyle(fontSize: 23.0),
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    '${event.country}, ${event.city}',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.date_range,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy').format(event.date),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      '${event.enrolledSpeakers} / ${event.maxSpeakers} speakers',
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 4.0),
                  child: Text(event.description)),
            ],
          ),
        ),
      ),
    );
  }
}
