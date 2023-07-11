// To parse this JSON data, do
//
//     final responNama = responNamaFromJson(jsonString);

class ResponNama {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  ResponNama({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory ResponNama.fromJson(Map<String, dynamic> json) => ResponNama(
        id: json["id"] ?? 0, // Menggunakan nilai default 0 jika null
        email: json["email"] ?? "",
        firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        avatar: json["avatar"] ?? "",
      );
}
