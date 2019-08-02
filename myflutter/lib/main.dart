import 'package:flutter/material.dart';
import 'tabs/Tabs.dart';
import 'pages/Form.dart';
import 'pages/SearchPage.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/form': (context) => FormPage(),
    '/search': (context, {arguments}) => SearchPage(arguments: arguments,),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Tabs(),
        // routes: {
        // '/form': (context) => FormPage(),
        // '/search': (context) => SearchPage(),
        // },
        onGenerateRoute: (RouteSettings settings) {
          final String name = settings.name;
          final Function pageContentBuilder = this.routes[name];

          if (pageContentBuilder != null) {
            if (settings.arguments  != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        });
  }
}
