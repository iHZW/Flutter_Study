import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/web_view_page.dart';
import '../pages/SearchPage.dart';
import '../pages/user/Login.dart';
import '../pages/publish/PublishPage.dart';

// 实现已定义路由跳转传参

class Router {
  static const searchPage = 'app://SearchPage';
  static const loginPage = 'app://LoginPage';
  static const publishPage = 'app://PublishPage';

  Widget _getPage(String url, dynamic params) {
    if (url.startsWith('https://') || url.startsWith('http://')) {
      return WebViewPageCommon(url, params: params);
    } else {
      Widget tempWidget;
      switch (url) {
        case searchPage:
          tempWidget = SearchPage(arguments: params);
          break;
        case loginPage:
          tempWidget = LoginPage();
          break;
        case publishPage:
          tempWidget = PublishPage();
          break;
        default:
      }
      return tempWidget;
    }
  }

  Router.push(BuildContext context, String url, dynamic params) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, params);
    }));
  }

  Router.pushNoParams(BuildContext context, String url) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, null);
    }));
  }
}
