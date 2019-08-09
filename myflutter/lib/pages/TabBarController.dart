import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  // int _currentIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
    );
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController, //注意
          tabs: <Widget>[
            Tab(
              text: "热销",
            ),
            Tab(
              text: "推荐",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    //添加阴影
                    elevation: 10.0,
                    child: Text("RaisedButton"),
                    onPressed: () {
                      print("RaisedButton");
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    child: Text("RaisedButton"),
                    onPressed: () {
                      print("RaisedButton");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // 初始化没有背景
                  FlatButton(
                    child: Text("FaltButton(初始化没有背景)"),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("ButtonBar1"),
                        onPressed: () {},
                      ),
                      MyButton(
                        text: "你好啊!",
                        pressed: () {
                          print("自定义Button");
                        },
                      ),
                      MyFloatingAcotionBtn(
                        text: "我是Floating",
                        onPressed: () {
                          print("我是Floating");
                        },
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Center(
            child: Text("推荐"),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  const MyButton(
      {Key key,
      this.text = '',
      this.pressed = null,
      this.width = 80.0,
      this.height = 30.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: RaisedButton(
          child: Text(this.text),
          onPressed: this.pressed,
        ),
      ),
    );
  }
}

class MyFloatingAcotionBtn extends StatelessWidget {
  final text;
  final onPressed;
  MyFloatingAcotionBtn({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80.0,
      height: 80.0,
      child: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: Text(
          this.text,
          textAlign: TextAlign.center,
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}
