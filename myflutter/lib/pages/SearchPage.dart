import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("搜索"),
        ),
        body: Text("搜搜界面内容区域${arguments != null ? arguments["id"] : "0"}"),
      ),
    );
  }
}
