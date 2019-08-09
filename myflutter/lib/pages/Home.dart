import 'package:flutter/material.dart';
import 'SearchPage.dart';
import 'package:myflutter/pages/AppBarDemo.dart';
import '../tabs/Tabs.dart';
import 'LuckPage.dart';

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List tempList = List();
  int countNum = 0;

  var _flag = true;
  int _sex = 1;
  int _sexNew = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: DrawerHeader(
                        child: Center(
                          child: Text("leftDraw"),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/6.png"),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text("搜索"),
                      leading: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.pushNamed(context, '/search',
                            arguments: {"id": "我是从首页抽屉跳转过来的"});
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //         builder: (context) => Tabs(
                        //               currentIndex: 0,
                        //             )),
                        //     (route) => route == null);
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text("分类"),
                      leading: Icon(
                        Icons.category,
                        color: Colors.blue,
                      ),
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => Tabs(
                                      currentIndex: 1,
                                    )),
                            (route) => route == null);
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text("设置"),
                      leading: Icon(
                        Icons.settings,
                        color: Colors.blue,
                      ),
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => Tabs(
                                      currentIndex: 2,
                                    )),
                            (route) => route == null);
                      },
                    ),
                    Divider(),
                    Checkbox(
                      value: this._flag,
                      onChanged: (bool value) {
                        setState(() {
                          this._flag = value;
                        });
                      },
                    ),
                    Divider(),
                    CheckboxListTile(
                      title: Text("姓名"),
                      subtitle: Text("HZW"),
                      value: this._flag,
                      onChanged: (bool value) {
                        setState(() {
                          this._flag = value;
                        });
                      },
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Text("男:"),

                        //按钮组  必须两个
                        Radio(
                          value: 1,
                          onChanged: (value) {
                            setState(() {
                              this._sex = value;
                            });
                          },
                          groupValue: this._sex,
                        ),
                        Text("女:"),
                        Radio(
                          value: 2,
                          onChanged: (value) {
                            setState(() {
                              this._sex = value;
                            });
                          },
                          groupValue: this._sex,
                        ),

                        SizedBox(
                          width: 30,
                        ),
                        Text("${this._sex}"),
                        Text("${this._sex == 1 ? "男" : "女"}")
                      ],
                    ),
                    Divider(),
                    Divider(),
                    RadioListTile(
                      title: Text("我的"),
                      subtitle: Text("我们的"),
                      value: 1,
                      onChanged: (value) {
                        setState(() {
                          this._sexNew = value;
                        });
                      },
                      groupValue: this._sexNew,
                    ),
                    Divider(),
                    RadioListTile(
                      title: Text("你的"),
                      subtitle: Text("我们的"),
                      value: 2,
                      onChanged: (value) {
                        setState(() {
                          this._sexNew = value;
                        });
                      },
                      groupValue: this._sexNew,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    //头部布局样式
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/1.png"),
                        fit: BoxFit.cover,
                      )),
                      accountName: Text("闻风"),
                      accountEmail: Text("18516638588@163.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.itying.com/images/flutter/5.png"),
                      ),
                      otherAccountsPictures: <Widget>[
                        Image.network(
                            "https://www.itying.com/images/flutter/2.png"),
                        Image.network(
                            "https://www.itying.com/images/flutter/3.png")
                      ],
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text("一"),
                leading: Icon(Icons.pages),
              )
            ],
          ),
        ),
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/tabBarController');
          //   },
          // ),
          title: Text("首页"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Column(
                children: this.tempList.map((value) {
                  return ListTile(
                    title: Text(value),
                  );
                }).toList(),
              ),
              RaisedButton(
                child: Text("点下试试看"),
                onPressed: () {
                  setState(() {
                    this.countNum++;
                    this.tempList.add("我是第${this.countNum}名");
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                child: Text("跳转搜索界面!!!"),
                onPressed: () {
                  // 路由跳转
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => SearchPage()));
                  // Navigator.pushNamed(context, '/search', arguments: {
                  //   "id": 123,
                  // });R
                  Navigator.pushNamed(context, '/search', arguments: {
                    "id": 123123,
                  });
                },
              ),
              RaisedButton(
                child: Text("跳转商品页面"),
                onPressed: () {
                  Navigator.pushNamed(context, '/product');
                },
              ),
              RaisedButton(
                child: Text("跳转到AppBar"),
                onPressed: () {
                  Navigator.pushNamed(context, '/appBarDemo');
                },
              ),
              RaisedButton(
                child: Text("跳转到TabBarController"),
                onPressed: () {
                  Navigator.pushNamed(context, '/tabBarController');
                },
              ),
              RaisedButton(
                child: Container(
                    height: 100.0,
                    width: 100.0,
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                            "https://www.itying.com/images/flutter/2.png"),
                        Text("特别的!!!"),
                      ],
                    )
                    //  Column(
                    //   children: <Widget>[
                    // Image.network(
                    //     "https://www.itying.com/images/flutter/2.png"),
                    // Text("特别的!!!"),
                    //   ],
                    // ),
                    ),
                onPressed: () {},
              ),
              ListTile(
                title: Text("进入测试界面"),
                onTap: () {
                  Navigator.pushNamed(context, '/luckPage');
                },
              ),
              ListTile(
                title: Text("进入WebViewPage测试界面"),
                onTap: () {
                  Navigator.pushNamed(context, '/luckDetailPage');
                },
              ),
              ListTile(
                title: Text("进入全站导航"),
                onTap: () {
                  Navigator.pushNamed(context, '/totalNavigationPage');
                },
              ),
            ],
          ),
        ));
  }
}
