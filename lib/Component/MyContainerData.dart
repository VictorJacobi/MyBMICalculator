import 'package:flutter/material.dart';
import 'package:health_project_app/MyConstants.dart';


class ContainerData extends StatelessWidget {
  ContainerData({this.myIcon, this.message});

  final IconData myIcon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 85.56,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          message,
          style: kLabelStyle,
          ),
      ],
    );
  }
}
