import 'package:flutter/material.dart';

import 'package:lifepet_app/screens/home/home_screen.dart';


class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tabacaria Boa Brisa"),
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(

                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.redAccent, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Telefone do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                Divider(),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.redAccent, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Senha do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

