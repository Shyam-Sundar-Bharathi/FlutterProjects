import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {

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
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.buttontapped,
        onLongPress: widget.buttonlongpressed,
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
            child: Container(
              color: widget.color,
              child: Center(
                child: Text(
                 widget.buttonText,
                 style: TextStyle(
                    color: widget.textColor,
                    fontSize: widget.fontSize,
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