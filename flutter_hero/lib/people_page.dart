import 'package:flutter/material.dart';
import 'package:flutter_hero/models/person.dart';

import 'hero_page.dart';
import './mocks/personsList.dart';

class PeoplePage extends StatelessWidget {

  final List<Person> _people = personsListMock;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemExtent: 80,
      itemCount: _people.length,
      itemBuilder: (context, index) {

        final person = _people[index];

        return InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroPage(person: person))),
            child: Center(
              child: ListTile(
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
    );
  }
}