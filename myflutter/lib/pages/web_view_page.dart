import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPageCommon extends StatefulWidget {
  final String url;
  final dynamic params;
  WebViewPageCommon(this.url, {Key key, this.params}) : super(key: key);

  _WebViewPageCommonState createState() =>
      _WebViewPageCommonState(this.url, params: this.params);
}

class _WebViewPageCommonState extends State<WebViewPageCommon> {
  final String url;
  final dynamic params;
  static final String titleKey = 'title';

  _WebViewPageCommonState(this.url, {this.params});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      appBar: AppBar(
        title: Text(params[titleKey]),
        backgroundColor: Colors.green,
      ),
    );
  }
}
