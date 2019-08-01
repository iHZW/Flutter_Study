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
        height: 400.0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        // child: Image.network("https://www.itying.com/images/flutter/2.png", fit: BoxFit.fill,
                        // ),
                        child: Image.asset(
                          "images/a.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Image.network(
                                "https://www.itying.com/images/flutter/1.png",
                                fit: BoxFit.cover,
                                width: 200.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.network(
                                  "https://www.itying.com/images/flutter/5.png"),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
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
