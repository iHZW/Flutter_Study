import 'package:flutter/material.dart';
import 'package:myflutter/pages/Home.dart';
import 'package:myflutter/pages/Setting.dart';
import 'package:myflutter/pages/CategoryPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toast/toast.dart';
import 'package:myflutter/pages/my/UserCenterPage.dart';

class Tabs extends StatefulWidget {
  final currentIndex;
  Tabs({Key key, this.currentIndex = 0}) : super(key: key);

  _TabsState createState() => _TabsState(this.currentIndex);
}

class _Item {
  String name;
  Icon tabIcon;
  _Item({this.name, this.tabIcon});
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
    UserCenterPage(),
  ];

// BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text("首页"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             title: Text("分类"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             title: Text("设置"),
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.supervised_user_circle), title: Text("我的")),
//         ],

  final itemNames = [
    _Item(name: "首页", tabIcon: Icon(Icons.home)),
    _Item(name: "分类", tabIcon: Icon(Icons.category)),
    _Item(name: "设置", tabIcon: Icon(Icons.settings)),
    _Item(name: "我的", tabIcon: Icon(Icons.supervised_user_circle)),
  ];

  List<BottomNavigationBarItem> itemList;

  @override
  void initState() {
    super.initState();
    if (itemList == null) {
      itemList = itemNames
          .map((item) => BottomNavigationBarItem(
                title: Text(item.name),
                icon: item.tabIcon,
              ))
          .toList();
    }
  }

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
      floatingActionButton: Container(
        width: 70.0,
        height: 70.0,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          elevation: 0.0,
          child: Icon(Icons.add),
          backgroundColor:
              this._currentIndex == 1 ? Colors.blue : Colors.yellow,
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(
            //         builder: (context) => Tabs(
            //               currentIndex: 0,
            //             )),
            //     (route) => route == null);

            // Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(builder: (context) => Tabs(currentIndex: 1)),
            //     (route) => route == null);
            // Toast.show("你好啊!我是Toast", context);

            setState(() {
              this._currentIndex = 1;
            });
            ToastView.createView(
                "你好啊!我是Toast",
                context,
                1,
                1, //这个来控制位置
                const Color(0xAA000000),
                Colors.white,
                20.0,
                Border.all(width: 1.0, color: Colors.blue));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

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
        items: itemList,
        // [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home),
        //     title: Text("首页"),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.category),
        //     title: Text("分类"),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.settings),
        //     title: Text("设置"),
        //   ),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.supervised_user_circle), title: Text("我的")),
        // ],
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
