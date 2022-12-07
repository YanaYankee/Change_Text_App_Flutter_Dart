// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/text_control.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String textToChange = 'Some text to change';
  final String _title = 'Assigment app';
  bool clicked = false;

  void _changeText(){
      setState(() {
         if(!clicked) {
          textToChange = textToChange.toUpperCase();
          clicked = true;
          } else {
          textToChange = textToChange.toLowerCase();
          clicked = false;
          }
      }
    );
    print('Clicked: $clicked');
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          backgroundColor: Color.fromARGB(255, 237, 113, 157)
          ),
        body: Stack(
          children: [
            TextToChange(textToChange),
            TextControl(_changeText)
          ],
        ),
      ), 
    );
  }
}
