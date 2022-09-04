import 'package:flutter/material.dart';

// 2 types of Widgets Stateful and Stateless
// here state=data, data that the app keep track in the memory
// Exaple the app that a sample project show is a Stateful Widget
// For starters We only need to focus on Stateless Widget
// Stateless widget doesn't keep track of any values while the app is running.


Scaffold(
      // It provides a blank screen that is hsown in the display
      appBar: AppBar(
        title: Text("Hello, World!!!"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment
            .start, // mainaxis is straight line from top to bottom. .end will start layout i.e. the contents from the bottom without any spacing
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // crossaxis is straight line from left to right // .strecth will stretch the layout from left to right

        children: [
          Container(
            decoration: BoxDecoration(
              // BoxDecoration is the most used
              color: Colors.orange, // predefined constant for color
            ),
            child: Text("One"), // Widget Inside the COntainer
          ),
          Container(
            decoration: BoxDecoration(
              // BoxDecoration is the most used
              color: Colors.blue, // predefined constant for color
            ),
            child: Text("Two"), // Widget Inside the COntainer
          ),
          Container(
            decoration: BoxDecoration(
              // BoxDecoration is the most used
              color: Colors.green, // predefined constant for color
            ),
            child: Text("Three"), // Widget Inside the COntainer
          ),
        ], // Container is the div is Flutter, we can use it to constraint
      ),
    ),