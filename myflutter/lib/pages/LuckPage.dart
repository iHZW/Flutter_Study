import 'package:flutter/material.dart';

class LuckPage extends StatefulWidget {
  LuckPage({Key key}) : super(key: key);

  _LuckPageState createState() => _LuckPageState();
}

class _LuckPageState extends State<LuckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通过测试"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("11111"),
          ),
          Divider(),
          Container(
            height: 200,
            // color: Colors.blue,
            child: GridView.count(
              mainAxisSpacing: 10.0, //垂直间距
              crossAxisCount: 4,
              // childAspectRatio: 1.0, //宽和高的比值
              children: <Widget>[
                ItemViewDemo(
                    "新股申购",
                    "https://www.itying.com/images/flutter/1.png",
                    "https://www.itying.com/images/flutter/5.png"),
                ItemViewDemo(
                    "模拟炒股",
                    "https://www.itying.com/images/flutter/2.png",
                    "https://www.itying.com/images/flutter/4.png"),
                ItemViewDemo(
                    "决策工具",
                    "https://www.itying.com/images/flutter/1.png",
                    "https://www.itying.com/images/flutter/5.png"),
                ItemViewDemo(
                    "猜涨跌",
                    "https://www.itying.com/images/flutter/2.png",
                    "https://www.itying.com/images/flutter/4.png"),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 230,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 25.0,
                      width: 8.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "热门推荐",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Wrap(
                          runSpacing: 10.0,
                          // spacing: 10.0,
                          alignment: WrapAlignment.start,
                          children: <Widget>[
                            ItemViewDemo(
                                "新股申购",
                                "https://www.itying.com/images/flutter/1.png",
                                "https://www.itying.com/images/flutter/6.png"),
                            ItemViewDemo(
                                "模拟炒股",
                                "https://www.itying.com/images/flutter/2.png",
                                "https://www.itying.com/images/flutter/5.png"),
                            ItemViewDemo(
                                "决策工具",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/4.png"),
                            ItemViewDemo(
                                "猜涨跌",
                                "https://www.itying.com/images/flutter/4.png",
                                "https://www.itying.com/images/flutter/3.png"),
                            ItemViewDemo(
                                "授权码兑换",
                                "https://www.itying.com/images/flutter/5.png",
                                "https://www.itying.com/images/flutter/2.png"),
                            ItemViewDemo(
                                "办卡赢权益",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/1.png"),
                            ItemViewDemo(
                                "智能盯盘",
                                "https://www.itying.com/images/flutter/6.png",
                                "https://www.itying.com/images/flutter/1.png"),
                            ItemViewDemo(
                                "资产配置",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/4.png"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(),
          Container(
            height: 140,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 25.0,
                      width: 8.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "股票",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: <Widget>[
                            ItemViewDemo(
                                "新股申购",
                                "https://www.itying.com/images/flutter/1.png",
                                "https://www.itying.com/images/flutter/6.png"),
                            ItemViewDemo(
                                "模拟炒股",
                                "https://www.itying.com/images/flutter/2.png",
                                "https://www.itying.com/images/flutter/5.png"),
                            ItemViewDemo(
                                "决策工具",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/4.png"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 230,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 25.0,
                      width: 8.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "理财",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Wrap(
                          runSpacing: 10.0,
                          // spacing: 10.0,
                          alignment: WrapAlignment.start,
                          children: <Widget>[
                            ItemViewDemo(
                                "新股申购",
                                "https://www.itying.com/images/flutter/1.png",
                                "https://www.itying.com/images/flutter/6.png"),
                            ItemViewDemo(
                                "模拟炒股",
                                "https://www.itying.com/images/flutter/2.png",
                                "https://www.itying.com/images/flutter/5.png"),
                            ItemViewDemo(
                                "决策工具",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/4.png"),
                            ItemViewDemo(
                                "猜涨跌",
                                "https://www.itying.com/images/flutter/4.png",
                                "https://www.itying.com/images/flutter/3.png"),
                            ItemViewDemo(
                                "授权码兑换",
                                "https://www.itying.com/images/flutter/5.png",
                                "https://www.itying.com/images/flutter/2.png"),
                            ItemViewDemo(
                                "办卡赢权益",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/1.png"),
                            ItemViewDemo(
                                "智能盯盘",
                                "https://www.itying.com/images/flutter/6.png",
                                "https://www.itying.com/images/flutter/1.png"),
                            ItemViewDemo(
                                "资产配置",
                                "https://www.itying.com/images/flutter/3.png",
                                "https://www.itying.com/images/flutter/4.png"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class ItemViewDemo extends StatelessWidget {
  String itemName;
  String imageUrl;
  String subImageUrl;
  ItemViewDemo(this.itemName, this.imageUrl, this.subImageUrl, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      splashColor: Colors.white,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  height: 50.0,
                  width: 60.0,
                  // color: Colors.white30,
                ),
              ),
              Positioned(
                top: 10.0,
                left: 15.0,
                child: Image(
                  image: NetworkImage(this.imageUrl),
                  height: 35.0,
                  width: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image(
                  alignment: Alignment.topRight,
                  image: NetworkImage(this.subImageUrl),
                  height: 15.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            width: 65.0,
            alignment: Alignment.center,
            child: Text(
              this.itemName,
              style: TextStyle(fontSize: 15.0),
            ),
          )
        ],
      ),
      onPressed: () {
        // Navigator.pushNamed(context, '/luckDetailPage');
        Navigator.pushNamed(context, '/webViewPage', arguments: {
          "title": this.itemName,
        });
      },
    );
  }
}
