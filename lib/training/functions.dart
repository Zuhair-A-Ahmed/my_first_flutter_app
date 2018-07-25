import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FunctionsClass extends StatefulWidget {
  @override
  _FunctionsClassState createState() => _FunctionsClassState();
}

class _FunctionsClassState extends State<FunctionsClass> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Card MyCostumCard(String MyText, IconData MyIcon,
    {Color MyColor: Colors.redAccent}) {
  return new Card(
      child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Text(
          MyText,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: MyColor,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        new Icon(
          MyIcon,
          color: MyColor,
          size: 40.0,
        )
      ],
    ),
  ));
}
