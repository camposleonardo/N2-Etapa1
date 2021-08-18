import 'dart:math';

import 'package:tabararia1/modelos/client_model.dart';
import 'package:tabararia1/modelos/product_model.dart';
import 'package:tabararia1/service/client-service.dart';

class ProductService{
  final List<Product> _productList = [];
  final ClientService clientService = ClientService;

  static final ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal(){
    _productList.add(Product(
        name: "Caixa de cigarro amarelo raylander",
        value: 78.98,
        description: "è top",
        amount: 7,
        id: "5",
        client: clientService.getClient("1")
    ));
    _productList.add(Product(
        name: "Caixa de cigarro preto raylander",
        value: 54.87,
        description: "è top 2",
        amount: 2,
        id: "25",
        client: clientService.getClient("1")
    ));
    _productList.add(Product(
        name: "Caixa de cigarro mais que vemelho raylander",
        value: 42.87,
        description: "è top",
        amount: 1,
        id: "22",
        client: clientService.getClient("1")
    ));
    _productList.add(Product(
        name: "Caixa de cigarro amarelo 9 raylander",
        value: 69.87,
        description: "è top",
        amount: 7,
        id: "247",
        client: clientService.getClient("1")
    ));
  }

  List getProductClient(String id) {
    return _productList.where((product) {
      return product.client.id == id;
    }).toList();
  }

  void addProduct(Product product) {
    _productList.add(Product(
        name: product.name,
        value: product.value,
        description: product.description,
        id: Random().nextInt(100).toString(),
        client: product.client
    ));
  }
}