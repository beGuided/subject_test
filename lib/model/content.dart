class details{
  final String question, answer;
  final List<String> option;

  details({this.question, this.option, this.answer});
}
List<details> content =[
  details(question:"Chukwusah Peter is a UI/UX designer, a docunamtary\n videographer, a Motion graphic artist," ,
  option: ["option1", "option2","option3","option4",],answer:"option1"
  ),
  details(question:"Chukwusah Peter is a UI/UX designer, a docunamtary\n videographer, a Motion graphic artist," ,
      option: ["option1", "option2","option3","option4",],answer:"option1"
  ),
  details(question:"Chukwusah Peter is a UI/UX designer, a docunamtary\n videographer, a Motion graphic artist," ,
      option: ["option1", "option2","option3","option4",], answer:"option4"
  ),
];


//Widget choiceButton(option){
////    return ListView.builder(
////      itemCount:4,
////      itemBuilder:(BuildContext context, index){
//  return Padding(
//    padding: const EdgeInsets.all(8.0),
//    child: MaterialButton(
//      height: 45.0,
//      minWidth: 200.0,
//      onPressed:(){},
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(20.0),
//      ),
//      child:Text(option, style:TextStyle(color:Colors.white,
//          fontSize: 15),maxLines: 1,) ,
//      color:Colors.indigo ,
//      splashColor: Colors.blue,
//    ),
//  );
//  // } ,
//
//  // );