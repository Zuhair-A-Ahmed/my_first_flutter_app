import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '  ',
        home: Scaffold(
            appBar: new AppBar(
              title: new Text('StatelessClass'),
            ),
            body: new ListView(
              children: <Widget>[
                new ListTile(
                  title: new Text('hi I am the first one'),
                  trailing: new Icon(Icons.accessibility),
                ),
                new ListTile(
                  title: new Text('hi I am the second one'),
                  trailing: new Icon(Icons.label),
                )
              ],
            )));
  }
}
