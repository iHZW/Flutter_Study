import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack 组件"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 处理重叠布局, 然后可以使用 Align() 来处理子每个子控件的布局
        Stack(
          alignment: Alignment(0, 0.8),
          children: <Widget>[
            Image.network("https://www.itying.com/images/flutter/1.png"),
            Text(
              "马   靖",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        Stack(
          alignment: Alignment(0, 0.8),
          children: <Widget>[
            Image.network("https://www.itying.com/images/flutter/2.png"),
            Text(
              "I Love You",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        // 可以直接设置比例
        AspectRatio(
          aspectRatio: 2.0,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Stack(
          alignment: Alignment(0, 0.8),
          children: <Widget>[
            Image.network("https://www.itying.com/images/flutter/3.png"),
            Text(
              "I Love You",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        Stack(
          alignment: Alignment(0, 0.8),
          children: <Widget>[
            Image.network("https://www.itying.com/images/flutter/4.png"),
            Text(
              "I Love You",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
