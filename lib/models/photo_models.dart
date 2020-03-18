class Photo {
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

  Photo({this.id, this.albumId, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json["id"],
      albumId: json["albumId"],
      title: json["title"],
      url: json["url"],
      thumbnailUrl: json["thumbnailUrl"],
    );
  }
}
