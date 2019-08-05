import 'package:flutter/material.dart';

class AppbarDemoPage extends StatelessWidget {
  const AppbarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "AppBarDemoPage",
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     print("menu");
            //   },
            // ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print("settings");
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("search");
                },
              )
            ],

            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: "热门",
                ),
                Tab(
                  text: "推荐",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab一"),
                  ),
                  ListTile(
                    title: Text("tab一"),
                  ),
                  ListTile(
                    title: Text("tab一"),
                  ),
                  ListTile(
                    title: Text("tab一"),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab二"),
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                  ListTile(
                    title: Text("tab二"),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
