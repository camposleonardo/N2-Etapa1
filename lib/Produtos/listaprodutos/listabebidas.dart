import 'package:flutter/material.dart';
import 'dart:core';
import 'package:lifepet_app/screens/home/home_screen.dart';


import 'package:lifepet_app/Produtos/telasprodutos/bebida2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida4.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida5.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida6.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida7.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida8.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida9.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida10.dart';
import 'package:lifepet_app/Produtos/telasprodutos/absolut.dart';

void main() => runApp(const GridBebidas());

class GridBebidas extends StatelessWidget {
  const GridBebidas({Key key}) : super(key: key);

  static const String _title = 'Boa Brisa';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabacaria Boa Brisa"),
        backgroundColor: Colors.pink,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );

          },
        ),

      ),
        body: DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Container(
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida2()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 2.png"),
                              Text("Vodka SKY, 900ml"),
                            ],
                          ),
                        ),
                      ),
                      Text("                  "),
                      Container(
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida1()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 1.png"),
                              Text("Vodka Absolut, 1L"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: <Widget>[
                      Container(
                        height: 240,
                        width: 160,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida3()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 3.png"),
                              Text(" Whisky Johnnie Walker Red Label, 1L"),
                            ],
                          ),
                        ),
                      ),
                      Text("                  "),
                      Container(
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida4()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 4.png"),
                              Text(" Absinto, 1L"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: <Widget>[
                      Container(
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida5()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 5.jpg"),
                              Text(" Jack Daniels Apple, 1L"),
                            ],
                          ),
                        ),
                      ),
                      Text("                  "),
                      Container(
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida6()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 6.jpg"),
                              Text(" Jack Daniels, 1L"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: <Widget>[
                      Container(
                        height: 190,
                        width: 170,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida8()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 8.png"),
                              Text(" TNT, 450ml"),
                            ],
                          ),
                        ),
                      ),
                      Text("                  "),
                      Container(
                        height: 190,
                        width: 170,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida7()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 7.png"),
                              Text(" Red Bull, 250ml "),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: <Widget>[
                      Container(
                        height: 190,
                        width: 170,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida10()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 10.png"),
                              Text(" Monster, 550ml"),
                            ],
                          ),
                        ),
                      ),
                      Text("                  "),
                      Container(
                        height: 190,
                        width: 170,
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Bebida9()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.asset("imagens/bebida 9.png"),
                              Text(" Monster, 550ml"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
    );




  }
}
