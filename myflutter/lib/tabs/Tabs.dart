import 'package:flutter/material.dart';
import 'package:myflutter/pages/Home.dart';
import 'package:myflutter/pages/Setting.dart';
import 'package:myflutter/pages/CategoryPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tabs extends StatefulWidget {
  final currentIndex;
  Tabs({Key key, this.currentIndex = 0}) : super(key: key);

  _TabsState createState() => _TabsState(this.currentIndex);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [
    HomeContent(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //填入设计稿中设备的屏幕尺寸

//假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

//设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          ..init(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Stack 组件"),
      // ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        // iconSize: 20.0, //icon大小
        // fixedColor: Colors.red,  //选中颜色
        type: BottomNavigationBarType.fixed, //设置允许多个tab
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
      ),
      // drawer: Drawer(
      //   child: Center(
      //     child: Column(
      //       children: <Widget>[
      //         Row(
      //           children: <Widget>[
      //             Expanded(
      //               child: DrawerHeader(
      //                 child: Text("你好Flutter!"),
      //                 decoration: BoxDecoration(
      //                     color: Colors.yellow,
      //                     image: DecorationImage(
      //                         fit: BoxFit.cover,
      //                         image: NetworkImage(
      //                             "https://www.itying.com/images/flutter/3.png"))),
      //               ),
      //             ),
      //           ],
      //         ),
      //         Divider(),
      //         ListTile(
      //           leading: CircleAvatar(
      //             child: Icon(Icons.home),
      //           ),
      //           title: Text("我的"),
      //         ),
      //         Divider(),
      //         ListTile(
      //           leading: CircleAvatar(
      //             child: Icon(Icons.people),
      //           ),
      //           title: Text("zhongxin"),
      //         ),
      //         Divider(),
      //       ],
      //     ),
      //   ),
      // ),

      //   endDrawer: Drawer(
      //     child: Column(
      //       children: <Widget>[
      //         Row(
      //           children: <Widget>[
      //             Expanded(
      //               child: DrawerHeader(
      //                 child: Text("你好Flutter!!!"),
      //                 decoration: BoxDecoration(
      //                   image: DecorationImage(
      //                       image: NetworkImage(
      //                           "https://www.itying.com/images/flutter/4.png"),
      //                       fit: BoxFit.cover),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //         // ListTile(
      //         //   leading: Icon(Icons.ring_volume),
      //         // )
      //       ],
      //     ),
      //   ),
    );
  }
}
