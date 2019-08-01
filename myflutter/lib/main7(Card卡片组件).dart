import 'package:flutter/material.dart';
import 'dataSource/listDataOne.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack 组件"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  Widget _getListView() {
    return ListView(
      children: this._getNewCardData(),
    );
  }

  List<Widget> _getNewCardData() {
    var tempListData = listOneData.map((value) {
      return Card(
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                value["imageUrl"],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(value["imageUrl"]),
              ),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
            )
          ],
        ),
      );
    });

    return tempListData.toList();
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: this._getNewCardData(),
    // );
    return this._getListView();
  }
}
