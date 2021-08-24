import 'package:flutter/material.dart';
import 'dart:core';
import 'package:lifepet_app/screens/home/home_screen.dart';

import 'package:lifepet_app/Produtos/telasprodutos/seda1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/seda2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/seda3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/seda4.dart';

void main() => runApp(const GridSedas());

class GridSedas extends StatelessWidget {
  const GridSedas({Key key}) : super(key: key);

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
                                MaterialPageRoute(builder: (context) => Seda1()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/seda 1.png",width: 140,height: 200,),
                                Text("Seda Row"),
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
                                MaterialPageRoute(builder: (context) => Seda2()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/seda 2.png",width: 140,height: 200,),
                                Text("Seda Raw White"),
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
                                MaterialPageRoute(builder: (context) => Seda3()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/seda 3.png",width: 140,height: 200,),
                                Text("Seda Zomo pink"),
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
                                MaterialPageRoute(builder: (context) => Seda4()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Image.asset("imagens/seda 4.png",width: 140,height: 200,),
                                Text("Seda Papello "),
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
