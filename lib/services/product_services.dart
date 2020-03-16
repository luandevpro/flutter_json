import "package:flutter/services.dart";
import 'package:flutter_json/models/product_model.dart';
import "dart:convert";

Future<String> _loadAssetsProduct() async {
  return await rootBundle.loadString("assets/product.json");
}

Future loadProduct() async {
  String jsonString = await _loadAssetsProduct();
  final jsonResponse = json.decode(jsonString);
  Product product = Product.fromJson(jsonResponse);
  print(product.images[0].imageName);
}
