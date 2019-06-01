
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
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
            automaticallyImplyLeading: false
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