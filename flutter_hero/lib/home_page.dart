
import 'package:flutter/material.dart';

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
              Navigator.pushReplacementNamed(context, '/');
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
                ),
                Tab(
                  icon: Icon(Icons.person),
                )
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.black,
            ),
          ),
          appBar: AppBar(
            title: Text('Flutter Hero'),
          ),
          body: TabBarView(
            children: [
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}