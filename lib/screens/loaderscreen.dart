import 'package:biology_quiz_app/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class loaderScreen extends StatefulWidget {

  @override
  _loaderScreenState createState() => _loaderScreenState();
}

class _loaderScreenState extends State<loaderScreen> {

  // this function create a loadading screen
  //for the app
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => homeScreen(),));}
    );
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("quiz app"),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Text(
            'quize me',
            style: TextStyle(fontSize: 50.0, color: Colors.white),
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
