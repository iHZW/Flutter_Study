import '../tabs/Tabs.dart';
import '../pages/Form.dart';
import '../pages/SearchPage.dart';
import '../pages/Setting.dart';
import 'package:flutter/material.dart';
import '../pages/Product.dart';
import '../pages/ProductDetail.dart';

final routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(
        arguments: arguments,
      ),
  '/setting': (context, {arguments}) => SettingPage(
        arguments: arguments,
      ),
  '/product': (context) => ProductPage(),
  '/productDetail': (context, {arguments}) => ProductDetail(
        arguments: arguments,
      ),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
