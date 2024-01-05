class User {
  int id;
  String? name;
  String? password;
  String? accessToken;

  User({required this.id, this.name, this.password, this.accessToken});

  User.fromMap(Map<String, dynamic> item)
      : id = item['id'],
        name = item["name"],
        password = item["password"],
        accessToken = item["accessToken"];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'password': password,
      'accessToken': accessToken
    };
  }
}
