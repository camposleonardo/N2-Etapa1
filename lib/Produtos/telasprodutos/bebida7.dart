import 'package:flutter/material.dart';
import 'package:lifepet_app/DataList.dart';
import 'dart:core';
import 'package:lifepet_app/detail.dart';

void main() => runApp(Bebida7());

class Bebida7 extends StatefulWidget {
  const Bebida7({Key key}) : super(key: key);

  @override
  _Bebida7State createState() => _Bebida7State();
}

class _Bebida7State extends State<Bebida7> {
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
                      color: Colors.white60,
                      child: Column(
                        children: <Widget>[
                          Image.asset("imagens/bebida 7.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(" Red Bull, 250ml "),
            Text("Por: R 22,00"),
            Wrap(
              children: <Widget>[

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bebida7()),
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
                  Text("Marca: Red Bull \n\nSabor: Original\n\nTipo de bebida: Energético\n\nInformações adicionais: Composto de Taurina ")
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