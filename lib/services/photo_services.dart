import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_json/models/photo_models.dart';

Future<String> _loadAssetsPhoto() async {
  return await rootBundle.loadString("assets/photo.json");
}

Future loadPhoto() async {
  String jsonString = await _loadAssetsPhoto();
  final jsonResponse = json.decode(jsonString);
  List photo = jsonResponse.map((json) {
    return Photo.fromJson(json);
  }).toList();
  print(photo[0].thumbnailUrl);
}
