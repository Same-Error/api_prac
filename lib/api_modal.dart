class Ofslogan {
  String? id;
  String? slogan;

  Ofslogan({this.id, this.slogan});

  Ofslogan.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    slogan = json["slogan"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["slogan"] = slogan;
    return _data;
  }

  static List<Ofslogan> slog(List value) {
    return value.map((e) => Ofslogan.fromJson(e)).toList();
  }
}
