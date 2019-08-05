import 'package:flutter/material.dart';

class RegistFirstPage extends StatefulWidget {
  RegistFirstPage({Key key}) : super(key: key);

  _RegistFirstPageState createState() => _RegistFirstPageState();
}

class _RegistFirstPageState extends State<RegistFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册一"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text("注册一界面"),
            RaisedButton(
              child: Text("下一步"),
              onPressed: () {
                Navigator.pushNamed(context, '/registSecond');
                //替换路由
                // Navigator.of(context).pushReplacementNamed('/registSecond');
              },
            )
          ],
        ),
      ),
    );
  }
}
