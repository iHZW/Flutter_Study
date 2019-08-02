import 'package:flutter/material.dart';
import 'tabs/Tabs.dart';
import 'pages/Form.dart';
import 'pages/SearchPage.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: {
        '/form': (context) => FormPage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}
