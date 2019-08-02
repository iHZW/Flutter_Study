import 'package:flutter/material.dart';
import 'package:myflutter/pages/Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        child: Container(
          color: Colors.yellow,
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("跳转表单界面"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return FormPage(
                      title: "跳转传值测试",
                    );
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
