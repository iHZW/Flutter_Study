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
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text("传参"),
              SizedBox(
                height: 20.0,
              ),
              Text("${arguments != null ? arguments["id"] : "0"}"),
            ],
          ),
        ),
      ),
    );
  }
}
