import 'package:flutter/material.dart';
import 'dart:core';
import 'package:lifepet_app/screens/home/home_screen.dart';

import 'package:lifepet_app/Produtos/telasprodutos/pipes1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/pipes2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/pipes3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/pipes4.dart';

void main() => runApp(const GridPipes());

class GridPipes extends StatelessWidget {
  const GridPipes({Key key}) : super(key: key);

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
                                MaterialPageRoute(builder: (context) => Pipes1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/pipes 1.png",width: 140,height: 200,),
                                Text("Pipe de plástico"),
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
                                MaterialPageRoute(builder: (context) => Pipes2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/pipes 2.png",width: 140,height: 200,),
                                Text("Pipe de metal"),
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
                                MaterialPageRoute(builder: (context) => Pipes3()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/pipes 3.jpg",width: 140,height: 200,),
                                Text("Pipe de Rústico"),
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
                                MaterialPageRoute(builder: (context) => Pipes4()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/pipes 4.png",width: 140,height: 200,),
                                Text("Pipe de Plástico Decorativo"),
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
