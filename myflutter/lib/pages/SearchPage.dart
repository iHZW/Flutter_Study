import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.greenAccent,
      child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            title: Text("搜索"),
          ),
          //使用SafeArea 可以解决iPhoneX等头部和底部的边界问题
          body: SafeArea(
            child: Center(
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
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                        ListTile(
                          title: Text("第一!!!"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
