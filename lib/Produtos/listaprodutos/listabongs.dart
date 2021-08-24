import 'package:flutter/material.dart';
import 'package:lifepet_app/DataList.dart';
import 'dart:core';
import 'package:lifepet_app/screens/home/home_screen.dart';

import 'package:lifepet_app/Produtos/telasprodutos/bong1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bong2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bong3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bong4.dart';


void main() => runApp(const GridBongs());

class GridBongs extends StatelessWidget {
  const GridBongs({Key key}) : super(key: key);

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
                                MaterialPageRoute(builder: (context) => Bong1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/bong 1.png",width: 140,height: 200,),
                                Text("Bong Plástico"),
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
                                MaterialPageRoute(builder: (context) => Bong2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/bong 2.png",width: 140,height: 200,),
                                Text("Bong Vidro"),
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
                                MaterialPageRoute(builder: (context) => Bong3()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/bong 3.png",width: 140,height: 200,),
                                Text("Bong Vidro Personalizado"),
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
                                MaterialPageRoute(builder: (context) => Bong4()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/bong 4.png",width: 140,height: 200,),
                                Text("Bong Plástico Personalizado"),
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
