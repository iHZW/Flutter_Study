import 'package:flutter/material.dart';
import 'dataSource/listDataOne.dart';

void main(List<String> args) {
  runApp(AppIn());
}

class AppIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 80.0,
          child: ListView(
            // reverse: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100.0,
              ),
              Container(
                color: Colors.blue,
                width: 100.0,
                height: 50.0,
              ),
              Container(
                color: Colors.greenAccent,
                width: 100.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 100.0,
                height: 50.0,
              ),
              Container(
                color: Colors.purple,
                width: 100.0,
                height: 50.0,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        // body: HomeContent(),
        // body: ListViewContent(),
        // 加载map数据
        body: ListViewNewContent(),
      ),
    );
  }
}

// 容器类似于View
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        color: Colors.lightGreen,
        child: Text(
          "Hello HZW",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.lightBlue,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ListViewNewContent extends StatelessWidget {
  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listOneData[index]["title"]),
      leading: Image.network(
        listOneData[index]["imageUrl"],
        width: 80.0,
        height: 80.0,
      ),
      subtitle: Text(listOneData[index]["author"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listOneData.length,
      itemBuilder: this._getListData,
    );
  }
}

// listView
class ListViewContent extends StatelessWidget {
  // ---------- ListView.builder  使用 ----------
  List list = List();
  ListViewContent() {
    for (var i = 0; i < 20; i++) {
      this.list.add("我是低$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // ---------------  listView ---------------

    // return ListView(
    //   // children: this._getData(),
    //   // children: this._getNewData(),
    //   // children: this._getDataOne(),
    // );
    // ---------------  listView ---------------

    // ---------------  listView.build ---------------

    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(this.list[index]),
        );
      },
    );
  }

  List<Widget> _getData() {
    return [
      ListTile(
        title: Text(
          "666!",
          style: TextStyle(fontSize: 35.0),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        color: Colors.lightBlue,
        child: Text(
          "快开看!!!!!",
          textAlign: TextAlign.center,
        ),
        height: 40.0,
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      ),
      Image.network(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564546627157&di=7dfba0ec2ac286bd22230e9b161bdbca&imgtype=0&src=http%3A%2F%2Fpic.iask.cn%2Ffimg%2F500273633_516.jpg",
      ),
      Text(
        "看我!!  look  me",
        style: TextStyle(fontSize: 30.0, color: Colors.green),
      ),
      Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564546627157&di=399a441777dff0fdb9a866ae2972f992&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F4%2F5655670fecee2.jpg"),
      Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564546627156&di=1515ec0818d7c1ddb9d6e407773aac17&imgtype=0&src=http%3A%2F%2Fimg.redocn.com%2Fsheji%2F20150328%2Fxingkongbeijingshipinsucai_4063053.jpg"),
      Image.network(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564546627156&di=f3d3ed791378807b876afdad42963445&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181104%2F33aa9b528e3046c885b3418523b28144.gif",
      )
    ];
  }

  //遍历添加lst
  List<Widget> _getNewData() {
    List<Widget> list = List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是$i列表"),
        leading: Icon(Icons.access_alarms),
      ));
    }
    return list;
  }

  // 自定义方法(从json数据中解析赋值)
  List<Widget> _getDataOne() {
    var tempList = listOneData.map((value) {
      return ListTile(
        leading: Image.network(
          value["imageUrl"],
          width: 80.0,
          height: 80.0,
          fit: BoxFit.cover,
        ),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }
}
