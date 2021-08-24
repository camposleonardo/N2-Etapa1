/*import 'dart:math';

import 'package:lifepet_app/models/client_model.dart';

class ClientService {
  final List<Client> _clientList = [];

  static final ClientService _singleton = ClientService._internal();

  factory ClientService() {
    return _singleton;
  }

  ClientService._internal() {
    _clientList.add(Client(
        nome: "Marcos",
        email: "auauaua@gmail.com",
        cpf: 22222222222,
        genero: "Masculino",
        id: "1"
    ));
    _clientList.add(Client(
        nome: "Maria",
        email: "blaublaublau@gmail.com",
        cpf: 11111111111,
        genero: "Feminino",
        id: "2"
    ));
  }

  List getAllClient() {
    return _clientList;
  }

  void addClient(Client client){
    _clientList.add(Client(
      nome: client.nome,
      genero: client.genero,
      cpf: client.cpf,
      email: client.email,
      id: Random().nextInt(100).toString(),
    ));
  }

  void editClient(String id, Client newClient) {
    Client clientEditar = getClient(id);
    clientEditar.nome = newClient.nome;
    clientEditar.email = newClient.email;
    clientEditar.genero = newClient.genero;
    clientEditar.cpf = newClient.cpf;

  }

  Client getClient(String id) {
    return _clientList.singleWhere((client) {
      return client.id == id;
    });
  }
}*/