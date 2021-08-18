class Client {
  String name;
  String email;
  String gender;
  double CPF;
  String id;

  Client({
    this.name,
    this.email,
    this.gender,
    this.CPF,
    this.id
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'CPF': CPF,
    };
  }
}