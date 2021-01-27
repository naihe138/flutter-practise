import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: Container(
        width: 700,
        height: 500,
        color: Colors.black45,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // 在一个盒子里面 纵向位置
          mainAxisAlignment: MainAxisAlignment.center, // 在一个盒子里面 横向位置
          children: [
            IconContainer(
              Icons.home,
              color: Colors.blueGrey,
            ),
            IconContainer(
              Icons.cake_sharp,
              color: Colors.deepOrange,
            ),
            IconContainer(Icons.search),
          ],
        ),
      ),
    ));
  }
}

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  IconContainer(this.icon, {this.color = Colors.red, this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Center(
        child: Icon(
          this.icon,
          color: Colors.white,
          size: this.size,
        ),
      ),
    );
  }
}
