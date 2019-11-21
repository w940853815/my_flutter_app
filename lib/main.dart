import 'package:flutter/material.dart';
import 'package:my_app/pages/login/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '底部导航栏',
      theme: ThemeData.light(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("flutter demo"),
      ),
      body: new Column(
        children: <Widget>[
          new FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new LoginPage()));
              },
              child: new Text("Bottom Tab")),
        ],
      ),
    );
  }
}
