import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('list按钮'),
        onPressed: () {
          print('按下操作');
        },
      ),
    );
  }
}
