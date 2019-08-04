import 'package:flutter/material.dart';
import 'package:myflutter/dataSource/listDataOne.dart';

class SettingPage extends StatefulWidget {
  final arguments;

  SettingPage({this.arguments, Key key}) : super(key: key);

  _SettingPageState createState() =>
      _SettingPageState(arguments: this.arguments);
}

class _SettingPageState extends State<SettingPage> {
  final arguments;
  _SettingPageState({this.arguments});
  List<Widget> _getSettingData() {
    var tempData = listOneData.map((value) {
      return ListTile(
        // leading: Image.network(
        //   value["imageUrl"],
        //   fit: BoxFit.cover,
        //   height: 50.0,
        //   width: 50.0,
        // ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(value["imageUrl"]),
          // child: Image.network(value["imageUrl"]),
        ),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempData.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getSettingData(),
    );
  }
}
