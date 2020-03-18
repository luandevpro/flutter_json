class Address {
  String city;
  List<String> streets;

  Address({this.city, this.streets});

  factory Address.fromJson(Map<String, dynamic> json) {
    final streetsFromJson = json["streets"];
    List streetsList = List<String>.from(streetsFromJson);
    return Address(city: json["city"], streets: streetsList);
  }
}
