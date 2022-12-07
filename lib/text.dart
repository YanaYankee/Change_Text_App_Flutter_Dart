import 'package:flutter/material.dart';

class TextToChange extends StatelessWidget {
  final String homeText;

  TextToChange(this.homeText);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15),
        child: Text(
          homeText,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            ),
          )
      );
  }
}