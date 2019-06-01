
import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:fancy_on_boarding/page_model.dart';

 final pageList = [
    PageModel(
        color: const Color(0xFF000000),
        heroAssetPath: 'assets/onboarding1.png',
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
        iconAssetPath: 'assets/onboarding1_icon.png'),
    PageModel(
        color: const Color(0xFF65B0B4),
        heroAssetPath: 'assets/onboarding2.png',
        title: Text('Do you need someone to speak at your local Flutter meetup?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'If you are hosing a tech meetup, and lacking experts to speak at it. You can find them at "Flutter Hero"!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        ),
        iconAssetPath: 'assets/onboarding1_icon.png'),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/onboarding3.png',
      title: Text('Find A Flutter Hero!',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 34.0,
          )),
      body: Text('Find the Flutter Expert who can speak at your meetup',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/onboarding1_icon.png',
    ),
    PageModel(
      color: const Color(0xFF1bFFBC),
      heroAssetPath: 'assets/onboarding4.jpg',
      title: Text('List Your Event',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.pink,
            fontSize: 34.0,
          )),
      body: Text('Add your upcoming event so heros may want speak at it',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.pink,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/onboarding1_icon.png',
    ),
    PageModel(
      color: const Color(0xFF1b90FF),
      heroAssetPath: 'assets/onboarding5.jpg',
      title: Text('Browse through top notch heros!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 34.0,
          )),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Browse list of amazing experts with 10+ years experience in Flutter. View their details and the locations they would want to speak at',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      ),
      iconAssetPath: 'assets/onboarding1_icon.png',
    ),
    PageModel(
      color: const Color(0xFF1b1b1b),
      heroAssetPath: 'assets/onboarding6.png',
      title: Text('This is the end of Onboarding!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 34.0,
          )),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('It is finally over! Just tap or swipe one more time.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      ),
      iconAssetPath: 'assets/onboarding1_icon.png',
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
