import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Iiro Krankka",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              background: Center(
                child: Hero(
                  tag: "1",
                  child: CircleAvatar(
                      minRadius: 90,
                      maxRadius: 140,
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/973827258787028992/dNNF4hEa_400x400.jpg")),
                ),
              ),
            ),
          ),
        ];
      },
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: FormBuilder(
          key: _fbKey,
          autovalidate: true,
          child: Column(children: <Widget>[
            FormBuilderCheckbox(
              attribute: 'is_expert',
              initialValue: false,
              label: Text("I am a legit HERO who has totally 10 years of experience in Flutter"),
              validators: [
                FormBuilderValidators.requiredTrue(
                  errorText: "You must be a hero to speak at meetups",
                ),
              ],
            )
          ])),
        )
      ]),
    ));
  }
}


