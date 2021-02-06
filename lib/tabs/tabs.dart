import 'package:flutter/material.dart';
import './history.dart';
import './home.dart';
import './list.dart';
import './settting.dart';

class Home extends StatelessWidget {
  List myPage = [HomePage(), Setting(), History(), ListPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: Text('xx'),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // unselectedItemColor: Colors.red,
        unselectedLabelStyle: TextStyle(
          color: Colors.green,
          fontSize: 16,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '设置',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: '历史',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: '个人中心',
          ),
        ],
      ),
    );
  }
}
