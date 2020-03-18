import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_json/models/shape_models.dart';

Future<String> _loadAssetsShape() async {
  return await rootBundle.loadString("assets/shape.json");
}

Future loadShape() async {
  String jsonString = await _loadAssetsShape();
  final jsonResponse = json.decode(jsonString);
  Shape shape = Shape.fromJson(jsonResponse);
  print(shape.property.breadth);
}
