import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Screens/input_page.dart';
import 'Screens/Screen_2.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/screen1': (context){
          return InputPage();
          },
        '/Screen2': (context){
          return SecondPage();
        },
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1B6EB7),
        scaffoldBackgroundColor: Color(0xFF055E98),
      ),
      home: InputPage(),

    );
  }
}

