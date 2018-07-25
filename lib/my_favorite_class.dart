import 'dart:math';

import 'package:flutter/material.dart';

class MyFavoriteClass extends StatefulWidget {
  @override
  _MyFavoriteClassState createState() => _MyFavoriteClassState();
}

Random random = new Random();
List mycolors = [Colors.yellowAccent, Colors.green];

class _MyFavoriteClassState extends State<MyFavoriteClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: new Text("hi there"),
      ),
      body: new Center(
        child: new Padding(
          padding: EdgeInsets.all(10.0),
          child: new ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemBuilder: (context, index) {
                return buildRow();
              }),
        ),
      ),
    ));
  }
}

Widget buildRow() {
  return new ListTile(
      leading: new Card(
    color: Colors.red,
    child: new Text("kdsjfjkdsf", style: new TextStyle(color: mycolors[0])),
  ));
}
