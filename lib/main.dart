import 'package:flutter/material.dart';
import 'package:learningdart/models/location.dart';
import 'models/location.dart';
import 'location_detail.dart';
import 'mocks/mock_location.dart';

void main() {
  final Location mockLocation = MockLocation.fetchAny();

  return runApp(MaterialApp(
      // MaterialApp() is basically a constructor that we use make widgets in flutter.
      home: LocationDetail(mockLocation)));
}
