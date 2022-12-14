import './location_fact.dart';
// models are classes thart are a thing that can be instantiaed to a class

// not a MVC architecture. Just a models overview in general
// location model
class Location {
  // each model has a member like an attribute of a model
  // final means can't be redefined again
  final String name;
  final String url;
  // the <> brackets denote that this is a list and of the type what is inside the <>
  final List<LocationFact> facts;
  // this is a constructor
  // a contructor creates an instance of the class
  // this -> it refers to the members of this class.
  // using "this" in the constructor will automatically assign the passed values tot hsi constructr
  // ({}) -> the curly braces inside refers that these are optional parameters
  Location({required this.name, required this.url, required this.facts});
}
