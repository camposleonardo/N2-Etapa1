import 'package:flutter/material.dart';
import 'package:lifepet_app/DataList.dart';
import 'dart:core';
import 'package:lifepet_app/detail.dart';

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

        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
              onPressed: (){
                showSearch(context: context, delegate: DataSearch(listWords));
              }
          )
        ],
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
                      height: 300,
                      width: 450,
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