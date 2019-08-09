import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:myflutter/routers/routes.dart' as prefix0;

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    ///register page widget builders,the key is pageName
    FlutterBoost.singleton.registerPageBuilders({
      // 'sample://firstPage': (pageName, params, _) => FirstRouteWidget(),
      // 'sample://secondPage': (pageName, params, _) => SecondRouteWidget(),
    });

    ///query current top page and load it
    FlutterBoost.handleOnStartPage();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/', //初始化时加载的路由
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
