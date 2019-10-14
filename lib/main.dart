import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'grid view and img',
        home: new Scaffold(
            body: new Center(
          child: new ListView(
            scrollDirection: Axis.horizontal,
            semanticChildCount: 3,
            children: <Widget>[
              new Image.network(
                  'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg'),
              new Image.network(
                  'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg'),
              new Image.network(
                  'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2569548689.jpg'),
              new Image.network(
                  'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565435561.jpg'),
              new Image.network(
                  'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2548995606.jpg'),
              new Image.network(
                  'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg'),
              new Image.network(
                  'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565751382.jpg')
            ],
          ),
        )));
  }
}
