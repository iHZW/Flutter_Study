import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Text('你好Flutter'
      // style: TextStyle(
      //   fontSize: 40.0,
      //   color: Colors.blue,
      // ),),

      // child: Container(
      //   child: Text(
      //     '你好啊~~~我是平安最帅的仔********',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontSize: 16.0,
      //         color: Colors.blue,
      //         fontStyle: FontStyle.italic,
      //         decoration: TextDecoration.lineThrough,
      //         decorationColor: Colors.white,
      //         decorationStyle: TextDecorationStyle.dashed,
      //         letterSpacing: 2.0),
      //     // 超出边界展示样式设置
      //     overflow: TextOverflow.ellipsis, //...
      //     // overflow: TextOverflow.fade, //自动换行
      //     maxLines: 1,
      //     textScaleFactor: 2.0,
      //   ),
      //   height: 300.0,
      //   width: 300.0,
      //   decoration: BoxDecoration(
      //       color: Colors.yellow,
      //       border: Border.all(color: Colors.blue),
      //       borderRadius: BorderRadius.all(Radius.circular(20))),
      //   // padding: EdgeInsets.all(30),
      //   padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
      //   margin: EdgeInsets.all(20),
      //   // transform: Matrix4.translationValues(20, 0, 0), //偏移
      //   transform: Matrix4.rotationZ(0.2), //旋转
      //   // transform: Matrix4.skewX(0.5),//倾斜
      //   // transform: Matrix4.diagonal3Values(1.2, 1, 1), //缩放
      //   // alignment: Alignment.topLeft, //位置
      // ),

      // Container 实现圆角图片
      child: Container(
        width: 400.0,
        height: 400.0,
        //使用 ClipOval 实现圆角图片
        child: ClipOval(
          // 加载远程图片
          // child: Image.network(
          //   "http://n1.itc.cn/img8/wb/recom/2016/07/09/146803063527555433.JPEG",
          //   height: 100.0,
          //   width: 100.0,
          //   fit: BoxFit.cover,
          // ),

          // 加载本地图片
          child: Image.asset(
            "images/a.jpg",
            fit: BoxFit.cover,
          ),
        ),

        // ------------------圆角图片---------------------
        // width: 400.0,
        // height: 400.0,
        // decoration: BoxDecoration(
        //     color: Colors.blue,
        //     borderRadius: BorderRadius.all(Radius.circular(30.0)),
        //     image: DecorationImage(
        //         image: NetworkImage(
        //           "http://n1.itc.cn/img8/wb/recom/2016/07/09/146803063527555433.JPEG",
        //         ),
        //         fit: BoxFit.cover)),

        // ------------------圆角图片---------------------

        // child: Image.network(
        //   "http://n1.itc.cn/img8/wb/recom/2016/07/09/146803063527555433.JPEG",
        //   alignment: Alignment.bottomRight,
        //   // color: Colors.blue,
        //   // colorBlendMode: BlendMode.srcATop, //混合颜色
        //   fit: BoxFit.cover, //充满容器,不变形
        //   // fit: BoxFit.fill, //充满容器,会变形
        //   // fit: BoxFit.contain, //原图显示
        //   // fit: BoxFit.fitWidth, //适配宽度
        //   repeat: ImageRepeat.repeat, //
        //   width: 400.0,
        //   height: 400.0,
        //   decoration: BoxDecoration(color: Colors.blue),
        // ),
      ),
    );
  }
}
