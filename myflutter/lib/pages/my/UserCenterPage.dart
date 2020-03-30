import 'package:flutter/cupertino.dart';
import 'package:myflutter/header_file/commonHeadField.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/header_file/commonHeadField.dart' as prefix0;
import 'package:myflutter/main.dart';
import 'package:myflutter/widgets/image/heart_img_widget.dart';
import 'package:myflutter/constant/constant.dart';
// import 'package:toast/toast.dart';
// import 'package:myflutter/widgets/library/toast_new.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myflutter/constant/cache_key.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:http/http.dart' as http;

//HttpClient 请求方式
import 'dart:convert';
import 'dart:io';




typedef VoidCallBack = void Function();

SliverToBoxAdapter _divider({double sliverHeight = 15.0}) {
  return SliverToBoxAdapter(
    child: Container(
      height: sliverHeight,
      color: const Color(0xc8ededed),
    ),
  );
}

class UserCenterPage extends StatefulWidget {
  UserCenterPage({Key key}) : super(key: key);

  _UserCenterPageState createState() => _UserCenterPageState();
}

BuildContext _userCenterContext;

class _UserCenterPageState extends State<UserCenterPage> {
  int currendIndex = 1;
// 右侧箭头
  _rightArrow() {
    return Icon(
      Icons.chevron_right,
      color: Color(0xffd4d4d4),
      size: 20.0,
    );
  }

  _dataSelect() {
    return UseNetDataWidget();
  }

  @override
  Widget build(BuildContext context) {
    _userCenterContext = context;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("我的"),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: false,
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                flexibleSpace: HeartImgWidget(Image.asset(
                    Constant.IMAGES + "bg_person_center_default.webp")),
                expandedHeight: 200.0,
              ),
              SliverToBoxAdapter(
                child: Container(
                    child:
                        // Row(
                        //   children: <Widget>[
                        //     Expanded(

                        //       child: Text(
                        //         "提醒",
                        //         style: TextStyle(fontSize: 17.0),
                        //       ),
                        //     ),
                        //     _rightArrow(),
                        //   ],
                        // ),
                        ListTile(
                  leading: Icon(Icons.alarm, color: Colors.blue),
                  title: Text(
                    "提醒",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 17.0),
                  ),
                  trailing: _rightArrow(),
                  onTap: () {
                    // Toast.show("提醒", context);
                    Toast.showG("提醒", context, 1);
                  },
                )),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 100.0,
                  alignment: Alignment.center,
                  child: Text("暂无新消息"),
                ),
              ),
              // 组件间,间隙
              _divider(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                  child: Text(
                    "我的书影音",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                // 影音
                child: _VideoBookMusicBookWidget(),
              ),
              _divider(),
              // UseNetDataWidget(),
              _dataSelect(),
              _divider(),
              _userCenterItem('ic_me_journal.png', '我的发布', onTap: () {
                print("我的发布");
              }),
              _divider(sliverHeight: 1.0),
              _userCenterItem('ic_me_follows.png', '我的关注'),
              _divider(sliverHeight: 1.0),

              _userCenterItem('ic_me_photo_album.png', '相册'),
              _divider(sliverHeight: 1.0),

              _userCenterItem('ic_me_doulist.png', '豆列 / 收藏'),
              // _divider(sliverHeight: 1.0),
              _divider(),

              _userCenterItem('ic_me_wallet.png', '钱包'),
              // _divider(),

              // SliverPadding(
              //   padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              //   // 填充一屏
              //   sliver: SliverFillRemaining(
              //     child: Text("SliverFillRemaining"),
              //   ),
              // ),
              _divider(),
              SliverToBoxAdapter(
                child: Container(
                    height: 800.0,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: window.physicalSize.width,
                          color: Colors.red,
                          child: CupertinoSegmentedControl<int>(
                            children: {
                              1: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "你!",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              2: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text("好!",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              3: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text("啊!",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            },
                            groupValue: this.currendIndex,
                            onValueChanged: (value) {
                              setState(() {
                                this.currendIndex = value;
                              });
                              print("$value");
                              print(window.physicalSize);
                            },
                            unselectedColor: CupertinoColors.destructiveRed,
                            selectedColor: Colors.blue,
                            borderColor: Colors.blue,
                          ),
                        ),
                        Expanded(
                          // child: Text("年后啊!!!"),
                          child: _CupertionMySegment(),
                        )

                        // _tabView(),
                      ],
                    )),
              ),

              SliverToBoxAdapter(
                child: Container(
                  height: 300.0,
                  color: Colors.blue,
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                  height: 300.0,
                  color: CupertinoColors.inactiveGray,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CupertionMySegment extends StatefulWidget {
  _CupertionMySegment({Key key}) : super(key: key);

  _CupertionMySegmentState createState() => _CupertionMySegmentState();
}

class _CupertionMySegmentState extends State<_CupertionMySegment> {
  var statusCode;
  var bodyString;
  double containerWidth;
  String httpClientResult;

  // Uri uri =
  //     Uri(scheme: "https", host: "t.weather.sojson.com", queryParameters: {
  //   "_id": 26,
  //   "city_code": "101010100",
  //   "city_name": "上海",
  // });

  //请求天气数据
  void getWeatherData() async {
    try {
      HttpClient httpClient = HttpClient();
      //发送请求
      HttpClientRequest request = await httpClient.getUrl(
          Uri.parse("http://t.weather.sojson.com/api/weather/city/101020100"));
      // HttpClientRequest request = await httpClient.getUrl(uri);
      //等待服务器返回
      HttpClientResponse response = await request.close();
      //使用utf-8.decoder从reponse里解析数据
      var result = await response.transform(utf8.decoder).join();
      //输出响应头
      print(result);
      setState(() {
        httpClientResult = result.length > 0 ? result : "";
      });
      //httpClient关闭
      httpClient.close();
    } catch (e) {
      print("请求失败: $e");
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    containerWidth = ScreenUtils.screenW(context);
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          // width: window.physicalSize.width,
          width: containerWidth,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text(
                  "Http get 请求!",
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  var url = 'http://httpbin.org/';
                  http.get(url).then((response) {
                    print("状态: ${response.statusCode}");
                    print("正文: ${response.body}");
                    setState(() {
                      statusCode = response.statusCode;
                      bodyString = response.body;
                    });
                  });
                },
              ),
              Text("状态: $statusCode"),
              Expanded(
                child: Text("正文: $bodyString"),
              ),
            ],
          ),
        ),
        Container(
          width: containerWidth,
          color: CupertinoColors.inactiveGray,
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text(
                  "HttpClient 请求!",
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  getWeatherData();
                  setState(() {
                    httpClientResult = httpClientResult;
                  });
                },
              ),
              // Text("状态: $statusCode"),
              Expanded(
                child: Text(httpClientResult),
              ),
            ],
          ),
        ),
        Container(
          width: containerWidth,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text(
                  "Http get 请求!",
                  style: prefix0.TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  var url = 'http://httpbin.org/';
                  http.get(url).then((response) {
                    print("状态: ${response.statusCode}");
                    print("正文: ${response.body}");
                    setState(() {
                      statusCode = response.statusCode;
                      bodyString = response.body;
                    });
                  });
                },
              ),
              Text("状态: $statusCode"),
              Expanded(
                child: Text("正文: $bodyString"),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class UseNetDataWidget extends StatefulWidget {
  UseNetDataWidget({Key key}) : super(key: key);

  _UseNetDataWidgetState createState() => _UseNetDataWidgetState();
}

class _UseNetDataWidgetState extends State<UseNetDataWidget> {
  bool selectNetData = false;

  // 初始化
  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectNetData = prefs.getBool(CacheKey.useNetData) ?? true;
    });
  }

  //设置value
  _setUserNetData(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(CacheKey.useNetData, value);
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          height: 55.0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '书影音数据是否来自网络',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CupertinoSwitch(
                value: selectNetData,
                onChanged: (bool value) {
                  selectNetData = value;
                  _setUserNetData(value);
                  var tmp;
                  if (value) {
                    tmp = '书影音数据 使用网络数据，重启APP后生效';
                  } else {
                    tmp = '书影音数据 使用本地数据，重启APP后生效';
                  }
                  print("===== + $value");
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("提示"),
                          content: Text("$tmp"),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("稍后自己重启"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text("现在重启"),
                              onPressed: () {
                                RestartWidget.restartApp(context);
                                Navigator.pop(context);
                              },
                            )
                          ],
                        );
                      });
                  // Toast.showG(tmp, context, 1);
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SliverToBoxAdapter _userCenterItem(String imageName, String itemName,
    {VoidCallBack onTap}) {
  return SliverToBoxAdapter(
    child: Column(
      children: <Widget>[
        // Expanded(
        // child:
        ListTile(
          dense: false,
          leading: Image.asset(Constant.IMAGES + imageName,
              width: 25.0, height: 25.0),
          title: Text(itemName),
          trailing: Icon(
            Icons.chevron_right,
            color: Color(0xffd4d4d4),
            size: 20.0,
          ),
          onTap: onTap,
        ),
        // Divider(),
        // ),
        // Divider(),
      ],
    ),
  );
}

TabController _tabController;
final List<String> _tabText = ['影视', '图书', '音乐'];

class _VideoBookMusicBookWidget extends StatefulWidget {
  _VideoBookMusicBookWidget({Key key}) : super(key: key);

  _VideoBookMusicBookWidgetState createState() =>
      _VideoBookMusicBookWidgetState();
}

class _VideoBookMusicBookWidgetState extends State<_VideoBookMusicBookWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabText.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: _TabBarWidget(),
            ),
            _tabView(),
          ],
        ),
      ),
    );
  }
}

Widget _tabView() {
  return Expanded(
    child: TabBarView(
      children: <Widget>[
        _tabBarItem('bg_videos_stack_default.png'),
        _tabBarItem('bg_books_stack_default.png'),
        _tabBarItem('bg_music_stack_default.png'),
      ],
      controller: _tabController,
    ),
  );
}

_tabBarItem(String img) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      getTabViewItem(img, "想看"),
      getTabViewItem(img, "再看"),
      getTabViewItem(img, "看过"),
    ],
  );
}

Widget getTabViewItem(String img, String txt) {
  return Column(
    children: <Widget>[
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
          child: GestureDetector(
            onTapDown: (tapDown) {
              Toast.showG("$img + $txt", _userCenterContext, 1);
              print("$img + $txt");
            },
            child: Image.asset(
              Constant.IMAGES + img,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Text(txt),
    ],
  );
}

class _TabBarWidget extends StatefulWidget {
  _TabBarWidget({Key key}) : super(key: key);

  __TabBarWidgetState createState() => __TabBarWidgetState();
}

class __TabBarWidgetState extends State<_TabBarWidget> {
  Color selectColor, unselectColor;
  TextStyle selectStyle, unselectStyle;
  List<Widget> tabWidgets;

  @override
  void initState() {
    super.initState();
    selectColor = Colors.blue;
    unselectColor = Colors.black;
    selectStyle = TextStyle(fontSize: 20.0, color: selectColor);
    unselectStyle = TextStyle(fontSize: 18.0, color: unselectColor);
    tabWidgets = _tabText.map((value) {
      return Text(
        value,
        style: TextStyle(fontSize: 15.0),
      );
    }).toList();
  }

  @override
  void dispose() {
    super.dispose();
    if (_tabController != null) {
      print("_tabController.dispose");
      _tabController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabWidgets,
      isScrollable: true,
      indicatorColor: selectColor,
      labelColor: selectColor,
      labelStyle: selectStyle,
      unselectedLabelColor: unselectColor,
      unselectedLabelStyle: unselectStyle,
      indicatorSize: TabBarIndicatorSize.label,
      controller: _tabController,
    );
  }
}
