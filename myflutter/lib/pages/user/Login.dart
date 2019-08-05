import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Text(
              "登陆界面",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text("立即登录"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
