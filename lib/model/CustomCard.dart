import 'package:biology_quiz_app/screens/createspace.dart';
import'package:flutter/material.dart';

class customCard2 extends StatelessWidget {
  final String subject, information, image;
  //final List<String> images; // a list is not required for the class

  customCard2({
  this.subject,
  this.information,
    this.image
  //this.images  //a list is not required for the class
  });

  var style=TextStyle(color:Colors.white,fontSize: 24.0,
    fontWeight: FontWeight.w700,);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap:(){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (cotext)=>creatSpace()));
        },
        child: Material(
          color: Colors.indigo,
          elevation:10.0,
          borderRadius:BorderRadius.circular(20.0) ,
          child:Container(
            child:Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical:10.0),
                    child: Material(
                      borderRadius:BorderRadius.circular(100.0),
                      child:Container(
                        height:200.0,
                          width:200.0,
                        child:ClipOval(
                          child://Icon(Icons.people,color: Colors.white,size: 150.0,),
                          Image(image:AssetImage(image),
                            fit: BoxFit.cover,
                          )
                        ) ,
                      ),
                  ) ,
                  ),
                  Center(
                      child: Text(subject, style:style,),
                  ),
                  Container(
                    child:Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Comrade Ifenuga is a social crusader "
                          "and development catalyst. He is an advocate of"
                          " youth emancipation and contribution to nation "
                          "building. Ife as he is fondly called  ",
                        style:TextStyle(color:Colors.white,fontSize: 16.0,),
                        maxLines:5,
                        textAlign:TextAlign.justify,),
                    ),
                  )
                ],
                   ),

          ),
          ),
      ));

  }
}
