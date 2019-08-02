import 'package:flutter/material.dart';
import 'package:myflutter/pages/Setting.dart';

class FormPage extends StatefulWidget {
  String title;

  FormPage({Key key, this.title = "表单"}) : super(key: key);

  _FormPageState createState() => _FormPageState(title: this.title);
}

class _FormPageState extends State<FormPage> {
  String title;
  _FormPageState({this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
          ListTile(
            title: Text("表单一"),
          ),
        ],
      ),
    );
  }
}
