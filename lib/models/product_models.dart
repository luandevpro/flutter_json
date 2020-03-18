class Images {
  int id;
  String imageName;

  Images({this.id, this.imageName});
  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(id: json["id"], imageName: json["imageName"]);
  }
}

class Product {
  int id;
  String name;
  List<Images> images;

  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> json) {
    final imagesFromJson = json["images"] as List;
    List imagesList = imagesFromJson.map((json) {
      return Images.fromJson(json);
    }).toList();
    return Product(id: json["id"], name: json["name"], images: imagesList);
  }
}
