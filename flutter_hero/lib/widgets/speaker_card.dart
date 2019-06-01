import 'package:flutter/material.dart';

import '../hero_page.dart';
import '../models/person.dart';

class SpeakerCard extends StatelessWidget {
  final Person person;
  SpeakerCard(this.person);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroPage(person: person))),
        child: ListTile(
              contentPadding: EdgeInsets.all(12.0),
              leading: Hero(
                tag: person.id,
                child: CircleAvatar(
                  minRadius: 30,
                  maxRadius: 30,
                  backgroundImage: NetworkImage(person.photoUrl)
              )),
              title: Text(person.name, style: TextStyle(fontSize: 18),),
        ),
      ),
    );
  }
}
