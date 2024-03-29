import 'package:flutter/material.dart';
import 'package:flutter_hero/book_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'models/person.dart';

class HeroPage extends StatelessWidget {

  final Person person;

  HeroPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookPage(person: person))),
        icon: Icon(Icons.add),
        label: Text("Book"),
      )),
      body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 400.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                person.name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              background: Center(
                child: Hero(
                  tag: person.id,
                  child: CircleAvatar(
                      minRadius: 90,
                      maxRadius: 140,
                      backgroundImage: NetworkImage(person.photoUrl)),
                ),
              ),
            ),
          ),
        ];
      },
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Text(
              person.bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ),

        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            IconButton(
              icon: new Icon(FontAwesomeIcons.twitter), 
              onPressed: () { }
            ),

            IconButton(
              icon: new Icon(FontAwesomeIcons.stackOverflow), 
              onPressed: () { }
            )
        ]),

        
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildMonth("June"),
                ..._buildEvent(title: "DashConf 2019", children: [
                  Text("  18th ✈️ CPH - LAX"),
                  Text("  19th 🗣 Why Flutter Is Okay"),
                  Text("  20th ✈️ LAX - CPH"),
                ]),
                _buildMonth("July"),
                ..._buildEvent(title: "GDG Helsinki", children: [
                  Text("  19th 🗣 Why Flutter Is Better"),
                ]),
                ..._buildEvent(title: "GDG Amsterdam", children: [
                  Text("  1st 🗣 Why Flutter Is Awesome"),
                ]),
                _buildMonth("August"),
                ..._buildEvent(title: "London", children: [
                  Text("  22nd ✈️ CPH - LHR"),
                  Text("  24th ✈️ LHR - CPH"),
                ]),
                SizedBox(height: 200),
              ]),
        )
      ]),
    ));
  }

  Widget _buildMonth(String month) {
    return Container(
      margin: EdgeInsets.only(bottom: 18, top: 15),
      child: Text(
        month,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      ),
    );
  }

  List<Widget> _buildEvent({String title, List<Widget> children}) {
    return [
      Container(
        padding: EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
        Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Container(
            margin: EdgeInsets.only(left: 5, top: 5, bottom: 3),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 1, color: Colors.grey.shade400),
              ),
            ),
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            )),
        SizedBox(height: 20)
      ]))
    ];
  }
}
