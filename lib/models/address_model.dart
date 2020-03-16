class Address {
  final String city;
  final List<String> streets;

  Address({this.city, this.streets});

  factory Address.fromJson(Map<String, dynamic> json) {
    final streetsFromJson = json["streets"];
    List<String> streetsList = List.from(streetsFromJson);

    return Address(city: json["city"], streets: streetsList);
  }
}
