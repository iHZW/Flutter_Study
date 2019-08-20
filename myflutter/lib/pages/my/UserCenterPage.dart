import 'package:flutter/cupertino.dart';
import 'package:myflutter/header_file/commonHeadField.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/widgets/image/heart_img_widget.dart';
import 'package:myflutter/constant/constant.dart';
// import 'package:toast/toast.dart';
// import 'package:myflutter/widgets/library/toast_new.dart';

class UserCenterPage extends StatefulWidget {
  UserCenterPage({Key key}) : super(key: key);

  _UserCenterPageState createState() => _UserCenterPageState();
}

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

  SliverToBoxAdapter _divider() {
    return SliverToBoxAdapter(
      child: Container(
        height: 15.0,
        color: const Color(0xc8ededed),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                child: _VideoBookMusicBookWidet(),
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
                  color: Colors.red,
                ),
              ),
              // SliverPadding(
              //   padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              //   // 填充一屏
              //   sliver: SliverFillRemaining(
              //     child: Text("SliverFillRemaining"),
              //   ),
              // ),
              SliverToBoxAdapter(
                child: Container(
                  height: 300.0,
                  color: Colors.white,
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
                        child:
                            Text("好!", style: TextStyle(color: Colors.white)),
                      ),
                      3: Padding(
                        padding: EdgeInsets.all(5.0),
                        child:
                            Text("啊!", style: TextStyle(color: Colors.white)),
                      ),
                    },
                    groupValue: this.currendIndex,
                    onValueChanged: (value) {
                      setState(() {
                        this.currendIndex = value;
                      });
                      print("$value");
                    },
                    unselectedColor: CupertinoColors.inactiveGray,
                    selectedColor: Colors.blue,
                    borderColor: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

TabController _tabController;
final List<String> _tabText = ['影视', '图书', '音乐'];

class _VideoBookMusicBookWidet extends StatefulWidget {
  _VideoBookMusicBookWidet({Key key}) : super(key: key);

  __VideoBookMusicBookWidetState createState() =>
      __VideoBookMusicBookWidetState();
}

class __VideoBookMusicBookWidetState extends State<_VideoBookMusicBookWidet>
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
        padding: EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: _TabBarWidget(),
            // ),
            _tabView(),
          ],
        ),
      ),
    );
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
          child: Image.asset(
            Constant.IMAGES + img,
            fit: BoxFit.cover,
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
