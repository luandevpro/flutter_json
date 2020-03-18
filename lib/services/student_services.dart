import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_json/models/student_models.dart';

Future<String> _loadAssetsStudent() async {
  return await rootBundle.loadString("assets/student.json");
}

Future loadStudent() async {
  String jsonString = await _loadAssetsStudent();
  final jsonResponse = json.decode(jsonString);

  Student student = Student.fromJson(jsonResponse);
  print(student.score);
}
