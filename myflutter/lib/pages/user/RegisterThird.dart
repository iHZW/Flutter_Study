import 'package:flutter/material.dart';
import '../../tabs/Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);

  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册三"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("注册三界面"),
            RaisedButton(
              child: Text("确定"),
              onPressed: () {
                // Navigator.pop(context);
                //返回根导航
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        builder: (context) => Tabs(
                              currentIndex: 2,
                            )),
                    (route) => route == null);
              },
            )
          ],
        ),
      ),
    );
  }
}
