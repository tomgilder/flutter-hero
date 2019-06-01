
import 'package:flutter/material.dart';
import 'package:flutter_hero/people_page.dart';

import 'events_page.dart';

class HomePage extends StatelessWidget {

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Menu'),
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text('Show onboarding'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/onboarding');
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit profile'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/edit_profile');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: _buildSideDrawer(context),
          bottomNavigationBar: SafeArea(
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.calendar_today),
                  text: "Events",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Heroes",
                )
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.blue,
            ),
          ),
          appBar: AppBar(
            title: Text('Flutter Hero'),
          ),
          body: TabBarView(
            children: [
              EventsPage(),
              PeoplePage(),
            ],
          ),
        ),
      ),
    );
  }
}
