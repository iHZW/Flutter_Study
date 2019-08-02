import 'package:flutter/material.dart';
import 'dataSource/listDataOne.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    // TODO: implement build
    // return Wrap(
    //   spacing: 10.0,
    //   alignment: WrapAlignment.center,
    //   children: <Widget>[
    //     MyButton("试试看"),
    //   ],
    // );
    // return HomePage();
    return HomefulPage();
  }
}

class HomefulPage extends StatefulWidget {
  HomefulPage({Key key}) : super(key: key);

  _HomefulPageState createState() => _HomefulPageState();
}

class _HomefulPageState extends State<HomefulPage> {
  String myName = "我就是我";
  int countNumbe = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Chip(
              label: Text("${this.countNumbe}"),
            ),
            ListTile(
              title: Text("${this.countNumbe}"),
            ),
            ListTile(
              title: Text("新闻: +${this.myName}"),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          child: Text("~看我72变~"),
          onPressed: () {
            setState(() {
              this.countNumbe++;
              this.myName = "${this.countNumbe}";
            });
          },
        )
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("${this.countNum}"),
          RaisedButton(
            child: Text("试试看"),
            onPressed: () {
              // setState()   //无法改变数值
              this.countNum++;
              print(this.countNum);
            },
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Colors.white,
      textColor: Theme.of(context).accentColor,
      child: Text(text),
      onPressed: () {},
    );
  }
}
