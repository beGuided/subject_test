import 'package:biology_quiz_app/screens/homescreen.dart';
import 'package:flutter/material.dart';


class resultPage extends StatefulWidget {
  int marks;
  resultPage({Key key, @required this.marks}):super(key:key);
  @override
  _resultPageState createState() => _resultPageState(marks);
}

class _resultPageState extends State<resultPage> {
  List<String> images=[
    "Asset/pic.jpg",
    "Asset/pic.jpg",
    "Asset/pic.jpg",
  ];
  String message,image;
  int marks;

  @override
  void initState(){
    if(marks<5){
      image=images[1];
      message="try harder, your score is $marks";
    }else if(marks<10){
      image=images[0];
      message="try harder, your score is $marks";
    }else{
      image=images[2];
      message="you have done well, your score is $marks";
    }
    super.initState();
  }

  _resultPageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your Result"),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            flex:7,
            child: Card(
              elevation: 5.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                     height:200.0,
                      child:ClipRect(
                        child:Image(
                          image:AssetImage(
                              image)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          child: Text(message,style: TextStyle(fontSize: 20.0),
                      ),
                        ),
                  ),

                  )],

              ),
            ),
          ),
          Expanded(
            flex: 3,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed:(){
                    Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context)=>homeScreen()));
                  },
                  child:Text("continue",style: TextStyle(fontSize: 18.0  ),),
                  borderSide:BorderSide(
                    width: 5.0,color:Colors.indigo,
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
