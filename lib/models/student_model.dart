class Student {
  String id;
  String name;
  int core;

  Student({this.id, this.name, this.core});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json["id"],
      name: json["name"],
      core: json["core"],
    );
  }
}
