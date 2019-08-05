import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final arguments;
  ProductDetail({this.arguments, Key key}) : super(key: key);

  _ProductDetailState createState() => _ProductDetailState(this.arguments);
}

class _ProductDetailState extends State<ProductDetail> {
  final arguments;
  _ProductDetailState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(this.arguments["imageUrl"]),
        ),
        title: Text(this.arguments["title"]),
        subtitle: Text(this.arguments["author"]),
      ),
    );
  }
}
