import 'package:flutter/material.dart';

class Applicationn extends StatefulWidget {
  @override
  _ApplicationnState createState() => new _ApplicationnState();
}

class _ApplicationnState extends State<Applicationn> {
  String ptext = '';
  bool booly = false;

  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('TextField'),
              centerTitle: true,
            ),
            drawer: new Drawer(
              child: new ListView(
                children: <Widget>[
                  new UserAccountsDrawerHeader(
                    accountName: new Text('fdfgsdf'),
                    accountEmail: new Text('mcdksjvhk'),
                    currentAccountPicture:
                        new CircleAvatar(backgroundColor: Colors.red),
                  ),
                  new ListTile(
                    title: new Text('hiiii'),
                    trailing: new Icon(Icons.hdr_strong),
                  )
                ],
              ),
            ),
            body: new Column(
              children: <Widget>[
                new TextField(
                  onChanged: (String tval) {
                    setState(() {
                      ptext = tval;
                    });
                  },
                  decoration: new InputDecoration(
                    icon: new Icon(Icons.input),
                    labelText: 'full name',
                    hintText: 'Zuhair',
                  ),
                ),
                new Text(ptext),
                new TextField(onSubmitted: (String tval) {
                  setState(() {
                    ptext = tval;
                  });
                }),
                new RaisedButton(
                  onPressed: null,
                ),
                new FlatButton(
                  onPressed: () {},
                  child: new Text('hi'),
                  color: Colors.amber,
                ),
                new Checkbox(
                    value: booly,
                    onChanged: (bool booly2) {
                      setState(() {
                        booly = booly2;
                      });
                    }),
                new Switch(value: true, onChanged: null),
                new Image.network(
                    'http://thecatapi.com/api/images/get?format=src&type=gif'),
              ],
            )));
  }
}
