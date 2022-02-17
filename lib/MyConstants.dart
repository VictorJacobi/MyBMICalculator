import 'package:flutter/material.dart';

const kOffColor = Color(0xFF1B6EB7);
const kOnColor = Color(0xFF347AC9);
const kLabelStyle =TextStyle(
fontWeight: FontWeight.bold,
fontSize: 20);

SizedBox mySizedBox(int val){
  return SizedBox(
    height: val.toDouble(),
  );
}