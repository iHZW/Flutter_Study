import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Custom Control"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child:  Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.lightGreen,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: IconContainer(
                    icon: Icons.search,
                    containerColor: Colors.red,
                    iconColor: Colors.white,
                    iconSize: 40.0,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        IconContainer(
                          icon: Icons.search,
                          containerColor: Colors.yellow,
                          iconColor: Colors.white,
                          iconSize: 40.0,
                        ),
                        SizedBox(
                          height: 5,
                        )
                        IconContainer(
                          icon: Icons.search,
                          containerColor: Colors.pink,
                          iconColor: Colors.white,
                          iconSize: 40.0,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    )
  
    );
  }
}

class IconContainer extends StatelessWidget {
  double iconSize = 32.0;
  Color iconColor = Colors.white;
  Color containerColor = Colors.blue;
  IconData icon = Icons.home;
  IconContainer(
      {this.icon, this.iconColor, this.iconSize, this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: containerColor,
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
