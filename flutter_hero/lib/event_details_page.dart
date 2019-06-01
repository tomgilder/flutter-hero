import 'package:flutter/material.dart';
import 'package:flutter_hero/models/event.dart';

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
                background: Image.asset("assets/event_logo.png")),
          ),
        ];
      },
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Text(
              event.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ),
        SizedBox(height: 20),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  child: Text(
                    'Peter Dinklage',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  child: Text(
                    'James Bond',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18),
                  child: Text(
                    'Ned Stark',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
        )
      ]),
    ));
  }
}
