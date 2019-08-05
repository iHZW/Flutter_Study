import 'package:flutter/material.dart';
import 'dataSource/listDataOne.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  // GridView.coun 数据源
  List<Widget> _getNewListData() {
    var tempListData = listOneData.map((value) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.purple,
        )),
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            SizedBox(
              height: 10.0,
            ),
            Text(
              value["title"],
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      );
    });
    return tempListData.toList();
  }

  Widget _getListBuilderData(context, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.purple,
      )),
      child: Column(
        children: <Widget>[
          Image.network(listOneData[index]["imageUrl"]),
          SizedBox(
            height: 10.0,
          ),
          Text(
            listOneData[index]["title"],
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  List<Widget> _getListData() {
    List<Widget> listData = List();
    for (var i = 0; i < 30; i++) {
      listData.add(Container(
        height: 400, //不生效
        alignment: Alignment.center,
        child: Text(
          "这是第$i名",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        color: Colors.green,
      ));
    }
    return listData;
  }

  @override
  Widget build(BuildContext context) {
    //------------- GridView.count  -------------
    // return GridView.count(
    // crossAxisSpacing: 10.0, //水平间距
    // mainAxisSpacing: 10.0, //垂直间距
    // childAspectRatio: 1.0, //宽和高的比值
    //   padding: EdgeInsets.all(10.0),
    //   crossAxisCount: 2,
    //   children: this._getNewListData(),
    // );
    //------------- GridView.count  -------------

    //------------- GridView.builder  -------------
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: listOneData.length,
      itemBuilder: this._getListBuilderData,
    );

    //------------- GridView.builder  -------------
  }
}
