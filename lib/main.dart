import 'package:biology_quiz_app/screens/loaderscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quiz app',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: loaderScreen(),
    );
  }
}

