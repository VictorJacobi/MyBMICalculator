import 'package:flutter/material.dart';

class MyReusedButton extends StatelessWidget{
  MyReusedButton({this.onPressed,this.requiredIcon});
  final Function onPressed;
  final  IconData requiredIcon;

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      fillColor: Color(0x99FFFFFF),
      constraints: BoxConstraints.tightFor(
        width: 47.0,
        height: 47.0,
      ),
      child: Icon(
        requiredIcon,
      ),
      shape: CircleBorder(),
      onPressed: onPressed,

    );
  }
}
