import 'package:flutter/material.dart';
import 'package:myflutter/dataSource/listDataOne.dart';

class SettingPage extends StatefulWidget {
  final arguments;

  SettingPage({this.arguments, Key key}) : super(key: key);

  _SettingPageState createState() =>
      _SettingPageState(arguments: this.arguments);
}

class _SettingPageState extends State<SettingPage> {
  final arguments;
  _SettingPageState({this.arguments});
  List<Widget> _getSettingData() {
    var tempData = listOneData.map((value) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(value["imageUrl"]),
          // child: Image.network(value["imageUrl"]),
        ),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempData.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("设置"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/1.png"))),
                height: 150.0,
                child: ListView(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("跳转登陆界面"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginPage');
                      },
                    ),
                    RaisedButton(
                      child: Text("跳转注册界面"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/registFirst');
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: this._getSettingData(),
              ),
            ),
          ],
        ));
  }
}
