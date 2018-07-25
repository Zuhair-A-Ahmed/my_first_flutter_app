import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulClass extends StatefulWidget {
  @override
  _StatefulClassState createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {
  String dynamicTitle = '';

  @override
  void initState() {
    // TODO: implement initState
    dynamicTitle = 'Click on this button';
    super.initState();
  }

  void method1() {
    setState(() {
      dynamicTitle = 'has been changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    final word = new WordPair.random();
    return new MaterialApp(
      title: 'StatefulClass',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Stateful'),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new Center(
                  child: new RaisedButton(
                    onPressed: () {
                      method1();
                    },
                    child: new Text(dynamicTitle),
                  ),
                ),
                new Card(
                  child: new Text(word.asString),
                )
              ],
            ),
          )),
    );
  }
}
