class NameModel {
  String? name;
  int? age;
  String? profession;
  String? image;
  Details? details;

  NameModel({this.name, this.age, this.profession, this.image, this.details});

  NameModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    age = json["age"];
    profession = json["profession"];
    image = json["image"];
    details =
        json["details"] == null ? null : Details.fromJson(json["details"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["age"] = age;
    _data["profession"] = profession;
    _data["image"] = image;
    if (details != null) {
      _data["details"] = details?.toJson();
    }
    return _data;
  }
}

class Details {
  String? fathername;

  Details({this.fathername});

  Details.fromJson(Map<String, dynamic> json) {
    fathername = json["fathername"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["fathername"] = fathername;
    return _data;
  }
}
