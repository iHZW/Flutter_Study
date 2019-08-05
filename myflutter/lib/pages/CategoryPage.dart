import 'package:flutter/material.dart';
import 'package:myflutter/pages/Form.dart';
import '../dataSource/listDataOne.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return
        //   Container(
        //     child: AspectRatio(
        //       aspectRatio: 2.0 / 1.0,
        //       child: Container(
        //         color: Colors.yellow,
        //         child: Column(
        //           children: <Widget>[
        //             RaisedButton(
        //               child: Text("跳转表单界面"),
        //               onPressed: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) {
        //   return FormPage(
        //     title: "跳转传值测试",
        //   );
        //                 }));
        //               },
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   );
        DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          //     title: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Expanded(
          //       child: TabBar(
          //         isScrollable: true,
          //         labelColor: Colors.white,
          //         unselectedLabelColor: Colors.white70,
          //         //设置下标属性
          //         indicatorSize: TabBarIndicatorSize.label,
          //         tabs: <Widget>[
          //           Tab(
          //             text: "热销123412341234",
          //           ),
          //           Tab(
          //             text: "推荐",
          //           ),
          //           Tab(
          //             text: "热销1123412341234",
          //           ),
          //           Tab(
          //             text: "推荐1",
          //           ),
          //           Tab(
          //             text: "热销2",
          //           ),
          //         ],
          //       ),
          //     )
          //   ],
          // )
          title: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            //设置下标属性
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
              fontSize: 20.0,
            ),
            tabs: <Widget>[
              Tab(
                text: "热销",
              ),
              Tab(
                text: "推荐",
              ),
              Tab(
                text: "热销1",
              ),
              Tab(
                text: "推荐1",
              ),
              Tab(
                text: "热销2",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: this._getSettingData(),
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.itying.com/images/flutter/2.png"),
                  ),
                  title: Text("跳转表单界面"),
                  onTap: () {
                    Navigator.pushNamed(context, '/form');
                  },
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Home"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Home"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getSettingData() {
    var tempData = listOneData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(value["imageUrl"]),
                // child: Image.network(value["imageUrl"]),
              ),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
            ),
            Divider(),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      );
    });
    return tempData.toList();
  }
}
