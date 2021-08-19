import 'dart:math';

import 'package:lifepet_app/models/client_model.dart';
import 'package:lifepet_app/utils/db.util.dart';

class ClientService {
  final List<Client> _clientList = []; //array list passa static final vai pegar os dados do serviço

  static final ClientService _singleton = ClientService._internal(); //construção dele

  factory ClientService() {
    return _singleton;
  }

  ClientService._internal() {
    _clientList.add(Client(
        name: "João",
        email: 'xuaxuaxuaxua@gmail.com',
        gender: "Masculino",
        cpf: 77777777777,
    ));
    _clientList.add(Client(
      name: "Maria",
      email: 'chachachacha@gmail.com',
      gender: "Feminino",
      cpf: 5478512369,
    ));
  }

  List getAllClients() { //fazer o tratamento dos dados que serão exibidos na home screen
    print(DbUtil.getData('client'));
    return _clientList;
  }

  void addClient(Client client){
    final newClient = Client(
      name: client.name,
      email: client.email,
      gender: client.gender,
      cpf: client.cpf,
    );
    DbUtil.insertData('client', newClient.toMap());
  }

  void editClient(String id, Client newClient) {
    Client clientEditar = getClient(id);
    clientEditar.name = newClient.name;
    clientEditar.email = newClient.email;
    clientEditar.cpf = newClient.cpf;
  }

  Client getClient(String id) {
    return _clientList.singleWhere((client) {
      return client.id == id;
    });
  }
}