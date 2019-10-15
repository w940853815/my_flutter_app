import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottonNavigationWidgetState createState() => _BottonNavigationWidgetState();
}

class _BottonNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _BottomNavigationColor),
              title:
                  Text('首页', style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.email, color: _BottomNavigationColor),
              title:
                  Text('邮件', style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages, color: _BottomNavigationColor),
              title:
                  Text('资讯', style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplay, color: _BottomNavigationColor),
              title:
                  Text('投影', style: TextStyle(color: _BottomNavigationColor))),
        ],
      ),
    );
  }
}
