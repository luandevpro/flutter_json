import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_json/models/address_models.dart';

Future<String> _loadAssetsAddress() async {
  return await rootBundle.loadString("assets/address.json");
}

Future loadAddress() async {
  String jsonString = await _loadAssetsAddress();
  final jsonResponse = json.decode(jsonString);

  Address address = Address.fromJson(jsonResponse);
  print(address.streets);
}
