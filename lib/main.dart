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
    return Center(child: Containt());
  }
}

// class Containt extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Image.network(
//         'https://blog.naice.me/_nuxt/img/f59a6a8.jpg',
//         fit: BoxFit.contain,
//       ),
//       width: 300.0,
//       height: 300.0,
//       decoration: BoxDecoration(
//         color: Colors.deepOrange[700],
//         border: Border.all(color: Colors.greenAccent, width: 2),
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//     );
//   }
// }

// 实现圆角图片
// class Containt extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300.0,
//       height: 300.0,
//       decoration: BoxDecoration(
//         color: Colors.deepOrange[700],
//         border: Border.all(color: Colors.greenAccent, width: 2),
//         borderRadius: BorderRadius.all(Radius.circular(40)),
//         image: DecorationImage(
//           image: NetworkImage('https://blog.naice.me/_nuxt/img/f59a6a8.jpg'),
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }

// 实现圆形图片
class Containt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: Image.network('https://blog.naice.me/_nuxt/img/f59a6a8.jpg'),
      ),
      width: 100,
      height: 100,
    );
  }
}
