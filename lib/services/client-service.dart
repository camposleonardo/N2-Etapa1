import 'dart:math';

import 'package:N2-Etapa1/modelos/client_model.dart';
import 'package:N2-Etapa1/utils/db.util.dart';

class PetService {
  final List<Client> _clientList = []; //array list passa static final vai pegar os dados do serviço

  static final ClientService _singleton = ClientService._internal(); //construção dele

  factory PetService() {
    return _singleton;
  }

  ClientService._internal() {
    _clientList.add(Client(
        name: "João",
        email: 'xuaxuaxuaxua@gmail.com',
        gender: "Masculino",
        CPF: 77777777777,
    ));
    _clientList.add(Client(
      name: "Maria",
      email: 'chachachacha@gmail.com',
      gender: "Feminino",
      CPF: 5478512369,
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
      CPF: client.CPF,
    );
    DbUtil.insertData('client', newClient.toMap());
  }

  void editClient(String id, Client newClient) {
    Client clientEditar = getClient(id);
    clientEditar.name = newClient.name;
    clientEditar.email = newClient.email;
    clientEditar.CPF = newClient.CPF;
  }

  Client getClient(String id) {
    return _clientList.singleWhere((pet) {
      return pet.id == id;
    });
  }
}