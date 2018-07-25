import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      items.add(i);
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            body: new ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return new ListTile(
                    title: new Text('item no is: $index'),
                    trailing: new Icon(Icons.favorite),
                  );
                })));
  }
}
