class Image {
  int id;
  String imageName;

  Image({this.id, this.imageName});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(id: json["id"], imageName: json["imageName"]);
  }
}

class Product {
  int id;
  String name;
  List<Image> images;

  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> json) {
    List imagesFromJson = json["images"];
    List<Image> imageList = imagesFromJson.map((json2) {
      return Image.fromJson(json2);
    }).toList();

    return Product(
      id: json["id"],
      name: json["name"],
      images: imageList,
    );
  }
}
