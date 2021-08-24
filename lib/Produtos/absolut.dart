import 'package:flutter/material.dart';
import 'dart:core';

void main() => runApp(Bebida1());

class Bebida1 extends StatefulWidget {
  const Bebida1({Key key}) : super(key: key);

  @override
  _Bebida1State createState() => _Bebida1State();
}

class _Bebida1State extends State<Bebida1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabacaria Boa Brisa"),
        backgroundColor: Colors.pink,

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      color: Colors.white60,
                      child: Column(
                        children: <Widget>[
                          Image.asset("imagens/bebida 1.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text("Vodka Absolut, 1L"),
            Text("Por: R 74,99 (R 74,99 / Litro)"),
            Wrap(
              children: <Widget>[

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bebida1()),
                  );
                },
                    child: Text("Comprar Agora")),
                Text("        "),
                ElevatedButton(onPressed: (){

                },
                    child: Text("+ Carrinho"))
              ],
            ),


            Container(
              color: Colors.grey,
              child:Column(
                children:<Widget>[
                  Text("Marca: Absolut Vodka \n\nSabor: Original\n\nTeor alcoólico: 40 Percent by Volume\n\nTipo de álcool: Vodka\n\nInformações sobre alérgenos: Não contém glúten")
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}