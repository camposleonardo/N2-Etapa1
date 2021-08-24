import 'package:flutter/material.dart';
import 'dart:core';
import 'package:lifepet_app/screens/home/home_screen.dart';


import 'package:lifepet_app/Produtos/telasprodutos/isqueiro1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/isqueiro2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/isqueiro3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/isqueiro4.dart';
import 'package:lifepet_app/Produtos/telasprodutos/isqueiro5.dart';


void main() => runApp(const GridAcendedores());
class GridAcendedores extends StatelessWidget {
  const GridAcendedores({Key key}) : super(key: key);

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
                                MaterialPageRoute(builder: (context) => Isqueiro1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/isqueiro 1.png",width: 140,height: 200,),
                                Text("Isqueiro Bobina\nPreto")
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
                                MaterialPageRoute(builder: (context) => Isqueiro2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/isqueiro 2.png",width: 140,height: 200,),
                                Text("Isqueiro Bobina\nPreto")
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
                                MaterialPageRoute(builder: (context) => Isqueiro3()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/isqueiro 3.png",width: 140,height: 200,),
                                Text("Isqueiro Bobina\nDiversas Cores")
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
                                MaterialPageRoute(builder: (context) => Isqueiro4()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/isqueiro 4.png",width: 140,height: 200,),
                                Text("Isqueiro Plasma\nPreto")
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
                                MaterialPageRoute(builder: (context) => Isqueiro5()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/isqueiro 5.jpg",width: 140,height: 200,),
                                Text("Isqueiro Plasma\nDiversas Cores")
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
