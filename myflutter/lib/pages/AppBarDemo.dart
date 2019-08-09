import 'package:flutter/material.dart';

class AppbarDemoPage extends StatelessWidget {
  var _userName = TextEditingController(
    text: "爱你呦❤️",
  );

  var _flag = true;

  String _userNameNew = "爱你呦❤️";

  AppbarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "AppBarDemoPage",
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     print("menu");
            //   },
            // ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print("settings");
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("search");
                },
              )
            ],

            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: "热门",
                ),
                Tab(
                  text: "推荐",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  TextField(),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "请输入心情",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "多行文本框",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: _userName,
                    onChanged: (value) {
                      _userName.text = value;
                    },
                    decoration: InputDecoration(
                        hintText: "请输入您的账户",
                        labelText: "账户",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "请输入您的密码",
                        labelText: "密码",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: TextEditingController(
                      text: _userNameNew,
                    ),
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        hintText: "请输入您的账户",
                        border: OutlineInputBorder()),
                    onChanged: (value) {
                      _userNameNew = value;
                      _userName.text = value;
                    },
                  ),
                  SizedBox(height: 10.0),
                  RaisedButton(
                    child: Text("登陆"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      // print(_userName.text);
                      print(_userNameNew);
                    },
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.red,
                    value: this._flag,
                    onChanged: (bool value) {
                      // setState(() {
                      this._flag = value;
                      // });
                    },
                  ),
                  CheckboxListTile(
                    value: this._flag,
                    // dense: this._flag,
                    title: Text("标题"),
                    subtitle: Text("好样的!!!"),
                    // selected: this._flag,
                    onChanged: (value) {
                      this._flag = value;
                    },
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
