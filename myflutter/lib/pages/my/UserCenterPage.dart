import 'package:flutter/material.dart';

class UserCenterPage extends StatefulWidget {
  UserCenterPage({Key key}) : super(key: key);

  _UserCenterPageState createState() => _UserCenterPageState();
}

class _UserCenterPageState extends State<UserCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Text("你好啊!!!"),
    );
  }
}
