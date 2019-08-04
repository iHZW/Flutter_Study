import 'package:flutter/material.dart';
import '../dataSource/listDataOne.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Widget> _getProductData() {
    var tempData = listOneData.map((value) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(value["imageUrl"]),
        ),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
        onTap: () {
          Navigator.pushNamed(context, '/productDetail', arguments: {
            "number": value["title"],
          });
        },
      );
    });

    return tempData.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品"),
      ),
      // body: Column(
      //   children: <Widget>[
      //     RaisedButton(
      //       child: Text("详情"),
      //       onPressed: () {
      //         Navigator.pushNamed(context, '/productDetail', arguments: {
      //           "number": 123321,
      //         });
      //       },
      //     )
      //   ],
      // ),

      body: ListView(
        children: _getProductData(),
        // children: <Widget>[
        //   ListTile(
        //     title: Text("111"),
        //     onTap: () {
        //       print("111");
        //     },
        //   ),
        //   ListTile(
        //     title: Text("222"),
        //     onTap: () {
        //       print("222");
        //     },
        //   ),
        // ],
      ),
    );
  }
}
