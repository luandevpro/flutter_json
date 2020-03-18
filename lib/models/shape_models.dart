class Property {
  double width;
  double breadth;

  Property({this.width, this.breadth});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(width: json["width"], breadth: json["breadth"]);
  }
}

class Shape {
  String shapename;
  Property property;

  Shape({this.shapename, this.property});

  factory Shape.fromJson(Map<String, dynamic> json) {
    return Shape(
      shapename: json["shapename"],
      property: Property.fromJson(json["property"]),
    );
  }
}
