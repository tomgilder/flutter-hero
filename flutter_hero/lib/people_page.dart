import 'package:flutter/material.dart';
import 'package:flutter_hero/models/person.dart';

import 'hero_page.dart';

class PeoplePage extends StatelessWidget {

  final people = <Person>[

    Person(
      id: "iiro",
      name: "Iiro Krankka",
      bio: "Mobile/Frontend Lead at Reflectly, and a Google Developer Expert for Flutter and Dart",
      photoUrl: "https://pbs.twimg.com/profile_images/973827258787028992/dNNF4hEa_400x400.jpg"
    ),

    Person(
      id: "fred",
      name: "Fred",
      bio: "Mobile/Frontend Lead at Reflectly, and a Google Developer Expert for Flutter and Dart",
      photoUrl: "https://pbs.twimg.com/profile_images/973827258787028992/dNNF4hEa_400x400.jpg"
    ),

    Person(
      id: "jess",
      name: "Jess",
      bio: "Mobile/Frontend Lead at Reflectly, and a Google Developer Expert for Flutter and Dart",
      photoUrl: "https://pbs.twimg.com/profile_images/973827258787028992/dNNF4hEa_400x400.jpg"
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {

        final person = people[index];

        return InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroPage(person: person))),
            child: ListTile(
            leading: Hero(
              tag: person.id,
              child: CircleAvatar(
                minRadius: 20,
                maxRadius: 20,
                backgroundImage: NetworkImage(person.photoUrl)
            )),
            title: Text(person.name),
            
          ),
        );
      }
    );
  }
}