import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'hello world',
      home: Scaffold(
        body: Center(
            child: Container(
          child: new Text(
              'aaaaaaaaaaaaaaaaaaaaaassdasdasdasdasdasdasdasssadasdasdsadasdasdsda',
              textAlign: TextAlign.right),
          alignment: Alignment.center,
          width: 500,
          height: 400,
          // color: Colors.lightBlue,
          padding: const EdgeInsets.all(50.0),
          margin: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
              gradient: const LinearGradient(colors: [
                Colors.lightBlue,
                Colors.greenAccent,
                Colors.purple
              ]),
              border: Border.all(width: 2.0, color: Colors.red)),
        )),
      ),
    );
  }
}
