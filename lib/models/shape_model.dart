class Property {
  double width;
  double breadth;

  Property({this.width, this.breadth});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(width: json["width"], breadth: json["breadth"]);
  }
}

class Shape {
  String name;
  Property property;

  Shape({this.name, this.property});

  factory Shape.fromJson(Map<String, dynamic> json) {
    return Shape(
      name: json["shape_name"],
      property: Property.fromJson(json["property"]),
    );
  }
}
