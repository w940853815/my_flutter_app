import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = new Card(
        child: Column(children: <Widget>[
      ListTile(
        title: new Text('卡片组件布局'),
        subtitle: new Text('card wight'),
        leading: new Icon(
          Icons.card_giftcard,
          color: Colors.blue,
        ),
      ),
      new Divider(),
      ListTile(
        title: new Text('列表组件布局'),
        subtitle: new Text('list wight'),
        leading: new Icon(
          Icons.card_giftcard,
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: new Text('层叠组件布局'),
        subtitle: new Text('stack wight'),
        leading: new Icon(
          Icons.card_giftcard,
          color: Colors.blue,
        ),
      ),
    ]));
    return MaterialApp(
      title: 'ListView wight',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('卡片布局'),
        ),
        body: Center(child: card),
      ),
    );
  }
}
