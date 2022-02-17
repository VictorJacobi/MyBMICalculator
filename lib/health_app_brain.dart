import 'dart:math';

import 'package:health_project_app/Screens/input_page.dart';

double bmiVal;
String resultForWeight = '';
String conclusiveMessage = '';

class Functionality {
  int height;
  int weight;
  Functionality({this.height,this.weight});
  double calculateBmiVal(){
    bmiVal = (weight.toDouble())/pow(height.toDouble()/100.0,2);
    return bmiVal;
  }
  void getResult(){
    if (bmiVal >= 25.0){
        resultForWeight = 'OVERWEIGHT';
        conclusiveMessage = selectedGender == Gender.Female?
        'Thank you Ma for using this app, but try going to gym please':
        'Thank you Sir for using this app, but try going to gym please';

    }else if(bmiVal >= 18.5 && bmiVal < 25){
      resultForWeight='NORMAL';
      conclusiveMessage = selectedGender == Gender.Female?
      'Thank you Ma for using this app. Keep it up! you are doing well':
      'Thank you Sir for using this app. Keep it up! you are doing well';
    }
    else{
      resultForWeight = 'UNDERWEIGHT';
      conclusiveMessage = selectedGender == Gender.Female?
      'Thank you Ma for using this app, but do make sure you eat well please':
      'Thank you Sir for using this app, but do make sure you eat well please';
    }
  }
}
