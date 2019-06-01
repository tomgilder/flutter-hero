import 'package:flutter/material.dart';
import 'package:flutter_hero/models/event.dart';
import 'package:flutter_hero/models/person.dart';
import 'package:intl/intl.dart';
import './widgets/speaker_card.dart';
import './mocks/personsList.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;

  EventDetailsPage(this.event);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                event.title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              background: Image.network(event.imageUrl),
            ),
          ),
        ];
      },
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.blueGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '${event.country}, ${event.city}',
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.date_range,
                    color: Colors.blueGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      DateFormat('dd-MM-yyyy').format(event.date),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(event.description,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Speakers',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(12.0),
            itemCount: event.speakerProfiles.length,
            itemBuilder: (context, i) {
              final Person person = personsListMock.firstWhere(
                  (person) => person.id == event.speakerProfiles[i]);
              return SpeakerCard(person);
            },
          ),
        )
      ]),
    ));
  }
}
