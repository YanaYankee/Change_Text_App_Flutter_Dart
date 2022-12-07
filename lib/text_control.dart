import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
 
  final VoidCallback changeText; 

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {

   String buttonText = 'Click to change text';

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
        margin: const EdgeInsets.fromLTRB(25, 5, 25, 50),
        child: ElevatedButton(
          style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 237, 113, 157)
            ),
            foregroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 255, 255, 255)
            ),
          ),
          onPressed: changeText,
          child: Text(buttonText),
        ),
      ),
    );
  }
}