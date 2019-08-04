import 'package:flutter/material.dart';
import 'package:myflutter/routers/routes.dart' as prefix0;
import 'tabs/Tabs.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Tabs(),
        // routes: {
        // '/form': (context) => FormPage(),
        // '/search': (context) => SearchPage(),
        // },
        initialRoute: '/',
        onGenerateRoute: prefix0.onGenerateRoute);
  }
}

class HomeContents extends StatelessWidget {
  const HomeContents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("123123123"),
    );
  }
}
