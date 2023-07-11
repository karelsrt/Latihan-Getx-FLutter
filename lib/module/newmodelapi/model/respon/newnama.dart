// To parse this JSON data, do
//
//     final namaNew = namaNewFromMap(jsonString);

import 'dart:convert';

class NamaNew {
  List<Datum> data;

  NamaNew({
    required this.data,
  });

  factory NamaNew.fromJson(String str) => NamaNew.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NamaNew.fromMap(Map<String, dynamic> json) => NamaNew(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Datum {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Datum({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
