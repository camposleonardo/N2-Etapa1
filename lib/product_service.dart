/*import 'dart:math';


import 'package:lifepet_app/models/product_model.dart';
import 'package:lifepet_app/services/client_service.dart';

class ProductService{
  final List<Product> _productList = [];
  final ClientService clientService = ClientService;

  static final ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal(){
    _productList.add(Product(
        nome: "Caixa de cigarro amarelo raylander",
        preco: 78.98,
        quantidade: 7,
        id: "5",
        client: clientService.getClient("1")
    ));
    _productList.add(Product(
        nome: "Caixa de cigarro vermelho raylander",
        preco: 78.98,
        quantidade: 7,
        id: "5",
        client: clientService.getClient("2")
    ));
    _productList.add(Product(
        nome: "Caixa de cigarro roxo raylander",
        preco: 78.98,
        quantidade: 1,
        id: "5",
        client: clientService.getClient("3")
    ));
    _productList.add(Product(
        nome: "Caixa de cigarro preto raylander",
        preco: 78.98,
        quantidade: 7,
        id: "5",
        client: clientService.getClient("4")
    ));
  }

  List getProductClient(String id) {
    return _productList.where((product) {
      return product.client.id == id;
    }).toList();
  }

  void addProduct(Product product) {
    _productList.add(Product(
        nome: product.nome,
        preco: product.preco,
        quantidade: product.quantidade,
        id: Random().nextInt(100).toString(),
        client: product.client
    ));
  }
}*/