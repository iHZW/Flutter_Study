import 'package:flutter/material.dart';

class RegistSecondPage extends StatefulWidget {
  RegistSecondPage({Key key}) : super(key: key);

  _RegistSecondPageState createState() => _RegistSecondPageState();
}

class _RegistSecondPageState extends State<RegistSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册二"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("注册二界面"),
            RaisedButton(
              child: Text("下一步"),
              onPressed: () {
                Navigator.pushNamed(context, '/registThird');

                //替换路由
                // Navigator.of(context).pushReplacementNamed('/registThird');
              },
            )
          ],
        ),
      ),
    );
  }
}
