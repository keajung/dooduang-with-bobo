import 'package:final_project/pages/card_tarot/cardRandom.dart';
import 'package:final_project/pages/card_tarot/cardWood.dart';
import 'package:final_project/pages/chooseagain.dart';
import 'package:final_project/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:final_project/model/siemsees.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const randomCard(),
    );
  }
}

