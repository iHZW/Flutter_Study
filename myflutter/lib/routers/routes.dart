import 'package:flutter/material.dart';

import '../tabs/Tabs.dart';
import '../pages/Form.dart';
import '../pages/SearchPage.dart';
import '../pages/Setting.dart';
import '../pages/Product.dart';
import '../pages/ProductDetail.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegistSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/LuckPage.dart';
import '../pages/LuckDetailPage.dart';
import '../pages/WebViewPage.dart';
import '../pages/TotalNavigationPage.dart';

// 路由配置
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
  '/loginPage': (context) => LoginPage(),
  '/registFirst': (context) => RegistFirstPage(),
  '/registSecond': (context) => RegistSecondPage(),
  '/registThird': (context) => RegisterThirdPage(),
  '/appBarDemo': (context) => AppbarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/luckPage': (context) => LuckPage(),
  '/luckDetailPage': (context) => Widget_WebView_Page(),
  '/webViewPage': (context, {arguments}) => WebViewPage(arguments: arguments),
  '/totalNavigationPage': (context) => TotalNavigationPage(),
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
