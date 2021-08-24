import 'package:flutter/material.dart';
import 'package:lifepet_app/DataList.dart';
import 'dart:core';
import 'package:lifepet_app/detail.dart';

import 'package:lifepet_app/Produtos/telasprodutos/absolut.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida3.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida4.dart';
import 'package:lifepet_app/Produtos/telasprodutos/bebida5.dart';
import 'package:lifepet_app/Produtos/telasprodutos/pipes1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/pipes2.dart';
import 'package:lifepet_app/Produtos/telasprodutos/pipes4.dart';
import 'package:lifepet_app/Produtos/telasprodutos/seda1.dart';
import 'package:lifepet_app/Produtos/telasprodutos/seda2.dart';

import 'package:lifepet_app/Produtos/listaprodutos/listabebidas.dart';
import 'package:lifepet_app/Produtos/listaprodutos/listaacendedores.dart';
import 'package:lifepet_app/Produtos/listaprodutos/listabongs.dart';
import 'package:lifepet_app/Produtos/listaprodutos/listaseda.dart';
import 'package:lifepet_app/Produtos/listaprodutos/listaacessorios.dart';
import 'package:lifepet_app/Produtos/listaprodutos/listapipes.dart';
import 'package:lifepet_app/login.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabacaria Boa Brisa"),
        backgroundColor: Colors.pink,

        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
              onPressed: (){
                showSearch(context: context, delegate: DataSearch(listWords));
              }
          ),

          IconButton(icon: Icon(Icons.account_circle),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              }
          )
        ],
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints){
            return Container(
              alignment: Alignment.center,

              child: Center(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }, // handle your image tap here
                      child: Image.asset(
                        'imagens/banner 1.png',
                        fit: BoxFit.cover, // this is the solution for border
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }, // handle your image tap here
                      child: Image.asset(
                        'imagens/banner 2.png',
                        fit: BoxFit.cover, // this is the solution for border
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      height: 199.0,
                      color: Colors.grey.withOpacity(0.99),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Spacer(),
                          Container(
                            color: Colors.redAccent.withOpacity(0.65),
                            width: 100.0,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/pipes 1.png",height: 140,),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Pipes1()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Pipe Plástico"),
                                      Text("BRL: 49,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            color: Colors.redAccent.withOpacity(0.65),
                            width: 100.0,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/pipes 2.png",height: 140,),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Pipes2()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Pipe de Metal"),
                                      Text("BRL: 98,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            color: Colors.redAccent.withOpacity(0.65),
                            width: 100.0,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/pipes 4.png",height: 140,),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Pipes4()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Pipe decorativo"),
                                      Text("BRL: 74,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            color: Colors.redAccent.withOpacity(0.65),
                            width: 100.0,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/seda 1.png",height: 140,),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Seda1()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Caixa de Seda"),
                                      Text("BRL: 129,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            color: Colors.redAccent.withOpacity(0.65),
                            width: 100.0,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/seda 2.png",height: 140,),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Seda2()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Seda Caseira"),
                                      Text("BRL: 129,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      height: 199.0,
                      color: Colors.pink.withOpacity(0.99),


                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            color: Colors.redAccent.withOpacity(0.65),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/bebida 2.png",height: 140,width:100 ),

                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Bebida2()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Vodka Sky"),
                                      Text("BRL: 74,99")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(

                            width: 100.0,
                            color: Colors.redAccent.withOpacity(0.65),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/bebida 3.png",height: 145,width:100),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Bebida3()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("RedLabel 750Ml"),
                                      Text("BRL: 109,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 100.0,
                            color: Colors.redAccent.withOpacity(0.65),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/bebida 4.png",height: 140,width:100),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Bebida4()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("AbsintoKosten 670Ml"),
                                      Text("BRL: 59,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            color: Colors.redAccent.withOpacity(0.65),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/bebida 5.jpg",height: 140,width:100),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Bebida5()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("JackDaniels Apple"),
                                      Text("135,90")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),Spacer(),

                          Container(
                            color: Colors.redAccent.withOpacity(0.65),
                            width: 100.0,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset("imagens/bebida 1.png",height: 140,),
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Bebida1()),
                                    );
                                  },
                                ),
                                Center(
                                  child: Column(
                                    children: <Widget>[
                                      Text("Vodka Absolut"),
                                      Text("74,99")
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Text("Categorias", style: TextStyle(color: Colors.white),),

            ),
            ListTile(
              title: const Text('Acendedores'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridAcendedores()),
                );
              },
            ),
            ListTile(
              title: const Text('Bongs'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridBongs()),
                );
              },
            ),
            ListTile(
              title: const Text('Para Enrolar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridSedas()),
                );
              },
            ),
            ListTile(
              title: const Text('Bebidas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridBebidas()),
                );
              },
            ),
            ListTile(
              title: const Text('Acessórios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridAcessorios()),
                );
              },
            ),
            ListTile(
              title: const Text('Pipes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridPipes()),
                );
              },
            ),
            Image.asset("imagens/wpp.png")
          ],
        ),
      ),
    );
  }
}




class DataSearch extends SearchDelegate<String> {

  final List<ListWords> listWords;

  DataSearch(this.listWords);

  @override
  List<Widget> buildActions(BuildContext context) {
    //Actions for app bar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = '';
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    final suggestionList = listWords;

    return ListView.builder(itemBuilder: (context, index) => ListTile(

      title: Text(listWords[index].titlelist),
      subtitle: Text(listWords[index].definitionlist),
    ),
      itemCount: suggestionList.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something

    final suggestionList = query.isEmpty
        ? listWords
        : listWords.where((p) => p.titlelist.contains(RegExp(query, caseSensitive: false))).toList();


    return ListView.builder(itemBuilder: (context, index) => ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail(listWordsDetail: suggestionList[index]),
          ),
        );
      },
      trailing: Icon(Icons.remove_red_eye),
      title: RichText(
        text: TextSpan(
            text: suggestionList[index].titlelist.substring(0, query.length),
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: suggestionList[index].titlelist.substring(query.length),
                  style: TextStyle(color: Colors.grey)),
            ]),
      ),
    ),
      itemCount: suggestionList.length,
    );
  }
}