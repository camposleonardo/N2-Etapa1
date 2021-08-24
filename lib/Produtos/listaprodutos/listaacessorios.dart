import 'package:flutter/material.dart';
import 'package:lifepet_app/DataList.dart';
import 'dart:core';
import 'package:lifepet_app/screens/home/home_screen.dart';


import 'package:lifepet_app/Produtos/telasprodutos/bandeja1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bandeja2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/cinzeiro1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/cinzeiro2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/dichavador1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/dichavador2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/dichavador3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/dichavador4.dart';
import 'package:lifepet_app/Produtos/telasprodutos/dichavador5.dart';







void main() => runApp(const GridAcessorios());

class GridAcessorios extends StatelessWidget {
  const GridAcessorios({Key key}) : super(key: key);

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
                                MaterialPageRoute(builder: (context) => Bandeja1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/bandeja 1.jpeg",width: 140,height: 200,),
                                Text("Bandeja Dolar")
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
                                MaterialPageRoute(builder: (context) => Bandeja2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/bandeja 2.jpg",width: 140,height: 200,),
                                Text("Bandeja Caveira")
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
                                MaterialPageRoute(builder: (context) => Cinzeiro1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/cinzeiro 1.jpg",width: 140,height: 200,),
                                Text("Cinzeiro Caveira")
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
                                MaterialPageRoute(builder: (context) => Cinzeiro2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/cinzeiro 2.jpg",width: 140,height: 200,),
                                Text("Cinzeiro Silicone\nRosa")
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
                                MaterialPageRoute(builder: (context) => Dichavador5()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/dichavador 5.jpeg",width: 140,height: 200,),
                                Text("Dichavador Ferro")
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
                                MaterialPageRoute(builder: (context) => Dichavador1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/dichavador 1.jpg",width: 140,height: 200,),
                                Text("Dichavador Ferro\nBulldog")
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
                                MaterialPageRoute(builder: (context) => Dichavador2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/dichavador 2.jpg",width: 140,height: 200,),
                                Text("Dichavador Raio\nPreto e Laranja")
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
                                MaterialPageRoute(builder: (context) => Dichavador3()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/dichavador 3.jpg",width: 140,height: 200,),
                                Text("Dichavador Madeira\nNatural")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child:GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dichavador4()),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset("imagens/dichavador 4.jpg",width: 140,height: 200,),
                            Text("Dichavador Molinete\nPreto")
                          ],
                        ),
                      ),
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
