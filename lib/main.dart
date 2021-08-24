import 'package:flutter/material.dart';
import 'package:lifepet_app/screens/home/home_screen.dart';
void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Boa Brisa",
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
