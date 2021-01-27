import 'package:flutter/material.dart';
import 'resdata/list.dart';

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
          elevation: 30,
        ),
        body: Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Containt();
  }
}

// home
class Containt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TopBanner(),
    );
  }
}

class TopBanner extends StatelessWidget {
  List<Widget> _renderItem() {
    var list = listDemo2.map((item) {
      return Container(
        child: Text(
          item['title'],
          style: TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(item['bg']), fit: BoxFit.cover),
        ),
        width: 293,
        height: 187,
        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Color(0xFFe1e1e1),
      height: 187,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: this._renderItem(),
      ),
    );
  }
}
