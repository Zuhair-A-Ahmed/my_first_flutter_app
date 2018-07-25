import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/training/buttondemoscreen.dart';
import 'package:my_first_flutter_app/training/functions.dart';
import 'package:my_first_flutter_app/training/listwidget.dart';
import 'package:my_first_flutter_app/training/statefulwidgetclass.dart';
import 'package:my_first_flutter_app/training/tab_bar.dart';
import 'package:my_first_flutter_app/training/text_field.dart';

import 'my_favorite_class.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text('Zuhair'),
          centerTitle: true,
          leading: Icon(Icons.home),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.arrow_downward),
                tooltip: 'hi there :)',
                onPressed: () {}),
            new IconButton(icon: new Icon(Icons.favorite), onPressed: null)
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.input), title: new Text('Screen1')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.input), title: new Text('Screen2'))
        ]),
        backgroundColor: Colors.greenAccent,
        body: new Container(
          padding: EdgeInsets.all(10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  MyCostumCard(text, Icons.label),
                  new Row(
                    children: <Widget>[
                      new Container(
                        width: 300.0,
                        height: 60.0,
                        child: new TextField(
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: 'enter you name'),
                        ),
                        color: Colors.yellowAccent,
                      )
                    ],
                  )
                ],
              ),
              MyCostumCard("هلووووووووو", Icons.label,
                  MyColor: Colors.greenAccent),
              new Row(
                children: <Widget>[
                  new Radio(value: false, groupValue: null, onChanged: null),
                  new Checkbox(value: false, onChanged: (bool value) {}),
                  new ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[new RaisedButton(onPressed: () {})],
                  )
                ],
              ),
              new RaisedButton(
                textColor: Colors.yellowAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new StatefulClass()));
                },
                child: new Text("goto  StatefulClass"),
              ),
              new RaisedButton(
                textColor: Colors.deepOrange,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ListWidget()));
                },
                child: new Text("goto  ListWidget_class"),
              ),
              new RaisedButton(
                textColor: Colors.deepOrange,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new MyFavoriteClass()));
                },
                child: new Text("goto  my favor"),
              ),
              new RaisedButton(
                textColor: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new StatefulClass()));
                },
                child: new Text("goto  StatefulClass"),
              ),
              new RaisedButton(
                textColor: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ButtonDemo()));
                },
                child: new Text("goto  ButtonDemo"),
              ),
              new RaisedButton(
                textColor: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Application()));
                },
                child: new Text("goto  tab_bar"),
              ),
              new InkWell(
                splashColor: Colors.pinkAccent,
                highlightColor: Colors.green,
                child: new RaisedButton(
                  textColor: Colors.indigo,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Applicationn()));
                  },
                  child: new Text("goto  TextField"),
                ),
              ),
              new Material(
                child: Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.all(10.0),
                  child: new InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    highlightColor: Colors.pinkAccent,
                    splashColor: Colors.greenAccent,
                    onTap: () {},
                    child: new Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: new Icon(Icons.add),
                        ),
                        Center(
                          child: new Text('Add', textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
