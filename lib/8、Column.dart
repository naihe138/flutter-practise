import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: layoutDemo(),
    ));
  }
}

class layoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.black12,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 150,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            color: Colors.red,
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 70,
                            color: Colors.red,
                            // child: Image.network(
                            //   'https://www.itying.com/images/flutter/3.png',
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ],
        ));
  }
}
