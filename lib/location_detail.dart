import 'package:flutter/material.dart';
import 'models/location.dart';

// 2 types of Widgets Stateful and Stateless
// here state=data, data that the app keep track in the memory
// Exaple the app that a sample project show is a Stateful Widget
// For starters We only need to focus on Stateless Widget
// Stateless widget doesn't keep track of any values while the app is running.

//Statless wifgests are effictively class - OOPS concet

// extends takes all the properties from the StatelessWidgets(in this case) and makes a class
// basicaly inheritace

class LocationDetail extends StatelessWidget {
  final Location location;

  // whatever data is passed in locatinDetails that will be automatically assigned to the location

  LocationDetail(this.location);

// In every widget there is a build func. and we need to override it
// in order to put something on the screen

  // here we are returinign widget
  @override // annotation - It is a keyword (Just like in Java)
  // when usign override we have to specify the input and the output of the funtion i.e.
  // the parameter that will be passed and the return value.
  Widget build(BuildContext context) {
    // BuildContext - In Flutter there is a tree of the widget. Everytime a widget is formed the BuildContext is invoked.
    // Just remeber whenever we use Build we have to pass a "context"
    return Scaffold(
        // It provides a blank screen that is hsown in the display
        appBar: AppBar(title: Text(location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment
              .start, // mainaxis is straight line from top to bottom. .end will start layout i.e. the contents from the bottom without any spacing
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // crossaxis is straight line from left to right // .strecth will stretch the layout from left to right

          children: _renderFacts(
              location), // Container is the div is Flutter, we can use it to constraint
        ));
  }

  List<Widget> _renderFacts(Location location) {
    final result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionTitle(location.facts[i].text));
    }
    return result;
  }

  // a private method that can be only accessed within the class
  Widget _sectionTitle(String text) {
    return Text(text); // Widget Inside the COntainer
  }

  Widget _sectionText(String text) {
    return Text(text); // Widget Inside the COntainer
  }
}
