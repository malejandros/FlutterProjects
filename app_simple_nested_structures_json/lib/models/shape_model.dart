import 'property_model.dart';

class Shape {
  final String shapeName;
  final Property property;

  Shape({this.shapeName, this.property});

  factory Shape.fromJson(Map<String, dynamic> parsedJson) {
    return Shape(
        shapeName: parsedJson['shape_name'],
        property: Property.fromJson(parsedJson['property']));
  }
}
