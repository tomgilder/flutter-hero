
import 'package:flutter/material.dart';

import 'home_page.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[

            Text("Welcome to our lovely app!"),

            Center(
              child: FlatButton(
                child: Text("Go to Home Page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(), settings: RouteSettings()),
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}