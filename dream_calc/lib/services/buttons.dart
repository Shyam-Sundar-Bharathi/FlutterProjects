import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  // declaring variables
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;
  final buttonlongpressed;
  final fontSize;

  //Constructor
  MyButton({this.color, this.textColor, this.buttonText, this.buttontapped,this.buttonlongpressed,this.fontSize=25.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: buttontapped,
        onLongPress: buttonlongpressed,
        child: Padding(
          padding: const EdgeInsets.all(0.2),
          child: ClipRRect(
          //borderRadius: BorderRadius.circular(25),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                 buttonText,
                 style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
         ),
        ),
    );
  }
}