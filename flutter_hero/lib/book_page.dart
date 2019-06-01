import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'models/person.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;

class BookPage extends StatefulWidget {
  final Person person;

  BookPage({@required this.person});

  @override
  State<StatefulWidget> createState() {
    return _BookPageState();
  }

}

class _BookPageState extends State<BookPage> {

  int step = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 180.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                widget.person.name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              background: Center(
                child: Hero(
                  tag: widget.person.id,
                  child: CircleAvatar(
                      minRadius: 20,
                      maxRadius: 50,
                      backgroundImage: NetworkImage(widget.person.photoUrl)),
                ),
              ),
            ),
          ),
        ];
      },
      body: ListView(children: <Widget>[
        
        BookStep(
          onTap: () => setState(() => step = 0),
          enabled: step == 0,
          title: "What do you want?",
          child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  ReplyButton(title: "Talk", onPressed: () => setState(() => step = 1)),
                  ReplyButton(title: "Consulting", onPressed: () => setState(() => step = 1)),
                  ReplyButton(title: "Training", onPressed: () => setState(() => step = 1)),
            ])
        ),
       

        BookStep(
          onTap: () => setState(() => step = 1),
          enabled: step == 1,
          title: "When?",
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: CalendarCarousel(
              
              // current: DateTime.now(),
              // onDayPressed: (DateTime date) {
              //   this.setState(() => _currentDate = date);
              // },
              thisMonthDayBorderColor: Colors.grey,
              height: 420.0,
              daysHaveCircularBorder: false,

              /// null for not rendering any border, true for circular border, false for rectangular border
            
//          weekendStyle: TextStyle(
//            color: Colors.red,
//          ),
//          weekDays: null, /// for pass null when you do not want to render weekDays
//          headerText: Container( /// Example for rendering custom header
//            child: Text('Custom Header'),
//          ),
            ),
          ),
        ),


      ]),
    ));
  }

}


class BookStep extends StatelessWidget {

  final bool enabled;
  final Widget child;
  final String title;
  final Function onTap;

  BookStep({@required this.enabled, @required this.child, @required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
        onTap: enabled ? null : onTap,
        child: Container(
        foregroundDecoration: enabled ? null : BoxDecoration(
          color: Colors.grey,
          backgroundBlendMode: BlendMode.saturation,
        ),
        child: Opacity(
            opacity: enabled ? 1 : 0.3,
            child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            
              child
              ]
          ),
        ),
      ),
    );
  }
}

class ReplyButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  ReplyButton({@required this.title, @required this.onPressed}); //, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.lightBlue,
        child: new Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)));
  }
}
