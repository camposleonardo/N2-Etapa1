class Client {
  String name;
  String email;
  String gender;
  double cpf;
  String id;

  Client({
    this.name,
    this.email,
    this.gender,
    this.cpf,
    this.id
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'CPF': cpf,
    };
  }
}