import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppIn());
}

class AppIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        // body: HomeContent(),
        body: ListViewContent(),
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

// listView
class ListViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(15), children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.ac_unit,
          size: 25.0,
        ),
        trailing: Icon(Icons.call_made),
        title: Text(
          "大陆在香港强化“一国”弱化“两制”?外交部回应",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        subtitle: Text("2019年7月30日外交部发言人华春莹主持例行记者会"),
      ),
      ListTile(
        title: Text("中共中央政治局召开会议 中共中央总书记习近平主持会议"),
        subtitle: Text("中共中央政治局召开会议 中共中央总书记习近平主持会中共中央政治局召开会议"),
      ),
      ListTile(
        title: Text("刘鹤与美国贸易代表莱特希泽 财长姆努钦共览浦江"),
        subtitle: Text("八点零五分，共览浦江"),
      ),
      ListTile(
        title: Text("女县长伸2个手指头说“200” 商人把200万送给她"),
        subtitle: Text("女县长伸2个手指头说“200”，商人把200万送给她"),
      ),
      ListTile(
        title: Text("悬赏缉捕2个月 涉黑恶女头目赏金从2万涨到50万(图)"),
        subtitle: Text("保时捷女司机打人被回扇 警方：女子违章扣分罚款"),
      ),
      ListTile(
        title: Text("大陆在香港强化“一国”弱化“两制”?外交部回应"),
        subtitle: Text("2019年7月30日外交部发言人华春莹主持例行记者会"),
      ),
      ListTile(
        title: Text("中共中央政治局召开会议 中共中央总书记习近平主持会议"),
        subtitle: Text("中共中央政治局召开会议 中共中央总书记习近平主持会中共中央政治局召开会议"),
      ),
      ListTile(
        title: Text("刘鹤与美国贸易代表莱特希泽 财长姆努钦共览浦江"),
        subtitle: Text("八点零五分，共览浦江"),
      ),
      ListTile(
        title: Text("女县长伸2个手指头说“200” 商人把200万送给她"),
        subtitle: Text("女县长伸2个手指头说“200”，商人把200万送给她"),
      ),
      ListTile(
        title: Text("悬赏缉捕2个月 涉黑恶女头目赏金从2万涨到50万(图)"),
        subtitle: Text("保时捷女司机打人被回扇 警方：女子违章扣分罚款"),
      ),
      ListTile(
        title: Text("中共中央政治局召开会议 中共中央总书记习近平主持会议"),
        subtitle: Text("中共中央政治局召开会议 中共中央总书记习近平主持会中共中央政治局召开会议"),
      ),
      ListTile(
        title: Text("刘鹤与美国贸易代表莱特希泽 财长姆努钦共览浦江"),
        subtitle: Text("八点零五分，共览浦江"),
      ),
      ListTile(
        title: Text("女县长伸2个手指头说“200” 商人把200万送给她"),
        subtitle: Text("女县长伸2个手指头说“200”，商人把200万送给她"),
      ),
      ListTile(
        title: Text("悬赏缉捕2个月 涉黑恶女头目赏金从2万涨到50万(图)"),
        subtitle: Text("保时捷女司机打人被回扇 警方：女子违章扣分罚款"),
      ),
    ]);
  }
}
