import 'package:clockprojectprototype/introPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ORACLE',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: introPage(),
    );
  }
}
