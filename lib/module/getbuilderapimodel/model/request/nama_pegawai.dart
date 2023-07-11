// To parse this JSON data, do
//
//     final nama = namaFromMap(jsonString);

class Nama {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Nama({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Nama.fromMap(Map<String, dynamic> map) {
    return Nama(
      id: map['id']?.toInt() ?? 0,
      email: map['email'] ?? '',
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'] ?? '',
      avatar: map['avatar'] ?? '',
    );
  }
}
