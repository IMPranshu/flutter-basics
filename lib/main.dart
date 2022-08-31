import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    // MaterialApp() is basically a constructor that we use make widgets in flutter.
    home: Scaffold(
      // It provides a blank screen that is hsown in the display
      appBar: AppBar(
        title: Text("Hello, World!!!"),
      ),
      body: Container(
        decoration: BoxDecoration(
          // BoxDecoration is the most used
          color: Colors.orange, // predefined constant for color
        ),
        child: Text("One"), // Widget Inside the COntainer
      ), // Container is the div is Flutter, we can use it to constraint
    ),
  ));
}
