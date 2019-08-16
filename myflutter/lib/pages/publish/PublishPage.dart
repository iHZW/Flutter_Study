import 'package:flutter/material.dart';

class PublishPage extends StatefulWidget {
  PublishPage({Key key}) : super(key: key);

  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发布"),
      ),
      body: SafeArea(
        child: Text("你好啊!"),
      ),
    );
  }
}
