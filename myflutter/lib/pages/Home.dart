import 'package:flutter/material.dart';
import 'package:myflutter/pages/SearchPage.dart';

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List tempList = List();
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.tempList.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        RaisedButton(
          child: Text("点下试试看"),
          onPressed: () {
            setState(() {
              this.countNum++;
              this.tempList.add("我是第${this.countNum}名");
            });
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          child: Text("跳转搜索界面!!!"),
          onPressed: () {
            // 路由跳转
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => SearchPage()));
            // Navigator.pushNamed(context, '/search', arguments: {
            //   "id": 123,
            // });R
            Navigator.pushNamed(context, '/search', arguments: {
              "id": 123123,
            });
          },
        ),
        RaisedButton(
          child: Text("跳转商品页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
      ],
    );
  }
}
