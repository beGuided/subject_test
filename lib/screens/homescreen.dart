import 'package:biology_quiz_app/model/CustomCard.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class homeScreen extends StatelessWidget {
  List<String> images =[
        "Asset/pic.jpg",
        "Asset/pic.jpg",
        "Asset/pic.jpg",
        "Asset/pic.jpg",
        "Asset/pic.jpg",
  ];

  @override
  Widget build(BuildContext context) {
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitDown,
//     DeviceOrientation.portraitUp
//   ]);
    return Scaffold(
      appBar:AppBar(
        title:Text("quize me"),
      ),
      body: ListView(
        children:<Widget>[

         // customCard(),
          customCard2(subject:"Biology", image:images[0]),
          customCard2(subject:"english",  image:images[1]),
          customCard2(subject:"physics", image:images[2]),
          customCard2(subject:"economic", image:images[0]),
          customCard2(subject:"maths", image:images[0]),
        ],

      ),
    );
  }



  // alternative way of making an image card/ custom card
  Widget customCard(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        color:Colors.indigo,
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(100.0),
                  image:DecorationImage(image:AssetImage("Asset/pic.jpg"),
                    fit: BoxFit.cover
                   ),
                ),
              ),
              Text("subject", style:TextStyle(fontSize:30,),)
            ],

          ) ,
        ));
 }

}
