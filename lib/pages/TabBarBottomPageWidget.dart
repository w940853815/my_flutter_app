import 'package:flutter/material.dart';
import 'package:my_app/pages/TabBarPageFirst.dart';
import 'package:my_app/pages/TabBarPageSecond.dart';
import 'package:my_app/pages/TabBarPageThree.dart';
import 'package:my_app/pages/TabBarWidget.dart';

class TabBarBottomPageWidget extends StatefulWidget {
  @override
  _TabBarBottomPageWidgetState createState() => _TabBarBottomPageWidgetState();
}

class _TabBarBottomPageWidgetState extends State<TabBarBottomPageWidget> {
  final PageController topPageControl = new PageController();
  final List<String> tab = ["动态", "趋势", "我的"];
  _renderTab() {
    List<Widget> list = new List();
    for (int i = 0; i < tab.length; i++) {
      list.add(new FlatButton(
          onPressed: () {
            topPageControl.jumpTo(MediaQuery.of(context).size.width * i);
          },
          child: new Text(tab[i], maxLines: 1)));
    }
    return list;
  }

  _renderPage() {
    return [
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree()
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TabBarWidget(
        type: TabBarWidget.BOTTOM_TAB,
        tabItems: _renderTab(),
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.black45,
        indicatorColor: Colors.white,
        title: new Text('GithubFlutter'));
  }
}
