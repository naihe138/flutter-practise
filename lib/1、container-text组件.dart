import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my demo ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('xxx111'),
          elevation: 30.0,
        ),
        body: Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Containt());
  }
}

class Containt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "我是一个文本内容11我是一个文本内容11我是一个文本内容11我是一个文本内容11",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: Colors.deepOrange[700],
        border: Border.all(color: Colors.greenAccent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(1.0, 1.0), blurRadius: 10.0),
          BoxShadow(color: Color(0x9900FF00), offset: Offset(1.0, 1.0), blurRadius: 2.0),
        ],
      ),
      alignment: Alignment.topCenter,
      transform: Matrix4.translationValues(100.0, 0, 0),
    );
  }
}
