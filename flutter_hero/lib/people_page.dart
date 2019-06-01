import 'package:flutter/material.dart';

import 'hero_page.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        InkWell(
            onTap: () => Navigator.push(
              context,
                MaterialPageRoute(builder: (context) => HeroPage()),
              ),
            child: ListTile(
            leading: Icon(Icons.person),
            title: Text('Iiro'),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Fred'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Jess'),
        ),
      ],
    );
  }
}