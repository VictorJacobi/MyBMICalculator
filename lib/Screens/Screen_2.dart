import 'package:flutter/material.dart';
import '../MyConstants.dart';
import '../Component/bottom_button.dart';
import 'input_page.dart';
import 'package:health_project_app/health_app_brain.dart';



class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SecondPage();
  }
}
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffColor,
     appBar: AppBar(
       title: Text(
        'BMI CALCULATOR',
     ),
     ),
     body: Container(
       margin: EdgeInsets.all(15),
       child: Column(
         children: [
           mySizedBox(0),
           Expanded(
             flex: 1,
             child: Container(
               padding: EdgeInsets.only(right: 55),
               child: Text(
                 'YOUR RESULT',
                 style: TextStyle(
                   fontSize: 35,
                 ),
               ),
             ),
           ),
           Expanded(
             flex: 5,
             child: Container(
               color: kOnColor,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     child: Text(
                       resultForWeight,
                       style: kLabelStyle,
                       ),
                     ),
                   Container(
                     child: Text(
                       resultVal.toStringAsFixed(3),
                       style: TextStyle(
                         fontSize: 40,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                   Container(
                     child: Text(
                       conclusiveMessage,
                       style: kLabelStyle,
                       textAlign: TextAlign.center ,
                     ),
                   ),
                  
                 ],
               ),
             ),
           ),
           mySizedBox(6),
           Expanded(
             child:   BottomButton(inboxText: 'RE-CALCULATE', onPressed: (){
               Navigator.pop(context);
             },
             ),

           ),
         ],
       ),
     ),
    );
  }
}

