import 'package:flutter/material.dart';
import 'package:flutter_hero/models/person.dart';

import 'hero_page.dart';

class PeoplePage extends StatelessWidget {

  final people = <Person>[

    Person(
      id: "emily",
      name: "Emily Fortuna",
      bio: "Emily Fortuna",
      photoUrl: "http://www.emilyfortuna.com/wp-content/uploads/2013/12/EmilyFortuna-Headshot.jpg"
    ),

    Person(
      id: "iiro",
      name: "Iiro Krankka",
      bio: "Mobile/Frontend Lead at Reflectly, and a Google Developer Expert for Flutter and Dart",
      photoUrl: "https://pbs.twimg.com/profile_images/973827258787028992/dNNF4hEa_400x400.jpg"
    ),

    Person(
      id: "simon",
      name: "Simon Lightfoot",
      bio: "Co-founder Flutter Study Group on Slack. Writing code for 18+ years. Now at DevAngels, London",
      photoUrl: "https://pbs.twimg.com/profile_images/1017532253394624513/LgFqlJ4U_400x400.jpg"
    ),

    Person(
      id: "dash",
      name: "Dash",
      bio: "Dash is a bird",
      photoUrl: "https://yt3.ggpht.com/a/AGF-l7_p35s8NY-EOwhcv9cgmj1RB2s4jkQyR7YoKQ=s900-mo-c-c0xffffffff-rj-k-no"
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemExtent: 80,
      itemCount: people.length,
      itemBuilder: (context, index) {

        final person = people[index];

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