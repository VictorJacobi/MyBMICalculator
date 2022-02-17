import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Component/ReusedCard.dart';
import 'package:health_project_app/Component/MyContainerData.dart';
import '../MyConstants.dart';
import '../Component/re_used_button.dart';
import '../Component/bottom_button.dart';
import 'package:health_project_app/health_app_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Gender selectedGender;
Color myColour;

double resultVal;
int heightVal = 80;
int weightVal = 50;
int ageVal=12;

enum Gender{
  Male,
  Female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My health app',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children :[
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colour:  selectedGender == Gender.Male ? kOnColor:
                      kOffColor,
                      cardChild: ContainerData(
                        myIcon: FontAwesomeIcons.mars,
                        message: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child:ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour:  myColour = selectedGender == Gender.Female ? kOnColor:
                      kOffColor,
                      cardChild:  ContainerData(
                        myIcon: FontAwesomeIcons.venus,
                        message: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kOffColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'HEIGHT',// The column widget will try to adjust to the size of it's child
                      style: kLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          heightVal.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'cm',
                          style: kLabelStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data:SliderTheme.of(context).copyWith(
                        thumbColor: Colors.tealAccent,
                        activeTrackColor: Color(0x99FFFFFF),
                        inactiveTickMarkColor: Color(0x99FFFFFF),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                        overlayColor: Color(0x99FFFFFF),

                      ),
                      child: Slider(// You can also make us eof sliderTheme for some customization
                        value: heightVal.toDouble(),
                        max: 210,
                        min: 45,
                        onChanged: (double newVal){
                          setState(() {
                            heightVal= newVal.toInt();
                            print(heightVal);
                          });
                        },

                      ),
                    ),
                  ],
                ),

              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kOffColor,
                      cardChild: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),

                          Text(
                            'WEIGHT',
                            style: kLabelStyle,
                          ),
                          Text(
                            weightVal.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyReusedButton(
                                onPressed: (){
                                  setState(() {
                                    weightVal++;
                                  });
                                },
                                requiredIcon: FontAwesomeIcons.plus,
                              ),
                              MyReusedButton(
                                onPressed: (){
                                  setState(() {
                                    weightVal--;
                                  });
                                },
                                requiredIcon: FontAwesomeIcons.minus,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour:kOffColor,
                      cardChild: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),

                          Text(
                            'AGE',
                            style: kLabelStyle,
                          ),
                          Text(
                            ageVal.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyReusedButton(
                                onPressed: (){
                                  setState(() {
                                    ageVal++;
                                  });
                                },
                                requiredIcon: FontAwesomeIcons.plus,
                              ),
                              MyReusedButton(
                                onPressed: (){
                                  setState(() {
                                    ageVal--;
                                  });
                                },
                                requiredIcon: FontAwesomeIcons.minus,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(inboxText: 'CALCULATE', onPressed: (){
              setState(() {
                selectedGender == Gender.Female || selectedGender == Gender.Male?Navigator.pushNamed(context, '/Screen2'): Alert(// Alert with button
                  context: context,
                  type: AlertType.error,
                  desc: 'Gender not stated',
                  buttons: [DialogButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'RESTART',
                    ),
                  )
                  ]
                ).show();

                Functionality myAction = Functionality(height: heightVal, weight: weightVal);
                resultVal = myAction.calculateBmiVal();
                Functionality myResults = Functionality(height: heightVal, weight: weightVal);
                myResults.getResult();
              });

            },
            ),

          ],
        ),
      ),



    );
  }
}




