import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget{
  BottomButton({this.inboxText,this.onPressed});
  final Function onPressed;
  final String inboxText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            inboxText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      margin: EdgeInsets.only(top: 10),
      height: 60,
      width: double.infinity,

    );
  }
}