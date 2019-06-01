
import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:fancy_on_boarding/page_model.dart';

 final pageList = [
    PageModel(
        color: const Color(0xFF000000),
        heroAssetPath: 'assets/onboarding1a.png',
        title: Text('Flutter Hero',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 40.0,
            )),
        body: Text('Welcome to Flutter Hero!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/onboarding1b.png'),
    PageModel(
        color: const Color(0xFF65B0B4),
        heroAssetPath: 'assets/onboarding2a.png',
        title: Text('Banks',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text(
            'We carefully verify all banks before adding them into the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/onboarding2b.png'),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/onboarding3a.png',
      title: Text('Store',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 34.0,
          )),
      body: Text('All local stores are categorized for your convenience',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/onboarding3b.png',
    ),
];

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FancyOnBoarding(
          pageList: pageList,
          mainPageRoute: '/',
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(automaticallyImplyLeading: false,),
    //   body: SafeArea(
    //     child: Column(
    //       children: <Widget>[

    //         Text("Welcome to our lovely app!"),

    //         Center(
    //           child: FlatButton(
    //             child: Text("Go to Home Page"),
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(builder: (context) => HomePage()),
    //               );
    //             },
    //           ),
    //         )

    //       ],
    //     ),
    //   ),
    // );
  }
}
