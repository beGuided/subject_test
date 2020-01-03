
import 'package:flutter/material.dart';
import 'package:biology_quiz_app/model/content.dart';

class creatSpace extends StatelessWidget {
 var option;
//  SystemChrome.setPreferredOrientations([
//    DeviceOrientation.portraitDown,
//    DeviceOrientation.portraitUp
//  ]);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(context: context, builder: (context) {
          return AlertDialog(
            title: Text(" quize me"),
            content: Text("you cant go back at this satge"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("ok"),)
            ],
          );
        }
        );
      },
      child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(content[0].question,
                      style: TextStyle(fontSize: 20.0),),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        choiceButton(content[0].option[0]),
                        choiceButton(content[0].option[1]),
                        choiceButton(content[0].option[2]),
                        choiceButton(content[0].option[3]),


                      ],
                    )
                ),
              ),

              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Text("30 ",
                      style: TextStyle(fontSize: 30.0
                      ),
                    ),
                  )
              )
            ],

          )
      ),
    );
  }
// this function change the color of the button when the user press
  int marks=0;
  var colorToshow =Colors.indigo;
  var  right =Colors.green;
  var wrong =Colors.red;

Map<String, Color> btnColor={
"content[0].option[0]":Colors.indigo,
  "content[0].option[0]":Colors.indigo,
  "content[0].option[0]":Colors.indigo,
  "content[0].option[0]":Colors.indigo,
};

  // this function check to confirm the corect ansewe
  void checkAnswer(){
if(option == content[0].answer){
  marks = marks+5;
  colorToshow=right;
}else{
  colorToshow=wrong;}
  }

  // this widget build the button
  Widget choiceButton(option) {
//    return ListView.builder(
//      itemCount:4,
//      itemBuilder:(BuildContext context, index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: 45.0,
        minWidth: 200.0,
        onPressed: () {
          checkAnswer();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(option, style: TextStyle(color: Colors.white,
            fontSize: 15), maxLines: 1,),
        color:Colors.indigo,
        splashColor: Colors.blue,
      ),
    );
    }

    // );


}
