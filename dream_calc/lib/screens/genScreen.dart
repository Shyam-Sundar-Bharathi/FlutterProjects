import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dream_calc/services/drawer.dart';
import 'package:dream_calc/services/buttons.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

class genCalc extends StatefulWidget {
  @override
  _genCalcState createState() => _genCalcState();
}

class _genCalcState extends State<genCalc> {

  Map data = {
    'precision' : 8,
    'colourTheme' : "BLUE",
  };
  TextEditingController userInput = new TextEditingController();
  var cursorPos;
  var answer = '';
  final List<String> buttons = [
    'CLR',
    '( )',
    '^',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void insertText(String myText) {
    cursorPos = userInput.selection.base.offset;
    if(cursorPos < 0)
      userInput.text += myText;
    else
      {
        final text = userInput.text;
        final textSelection = userInput.selection;
        final newText = text.replaceRange(
          textSelection.start,
          textSelection.end,
          myText,
        );
        final myTextLength = myText.length;
        userInput.text = newText;
        userInput.selection = textSelection.copyWith(
          baseOffset: textSelection.start + myTextLength,
          extentOffset: textSelection.start + myTextLength,
        );
      }
  }

  void backSpace() {
    cursorPos = userInput.selection.base.offset;
    if(cursorPos < 0)
      userInput.text = userInput.text.substring(0, userInput.text.length - 1);
    else
      {
        final text = userInput.text;
        final textSelection = userInput.selection;
        final selectionLength = textSelection.end - textSelection.start;
        // There is a selection.
        if (selectionLength > 0) {
          final newText = text.replaceRange(
            textSelection.start,
            textSelection.end,
            '',
          );
          userInput.text = newText;
          userInput.selection = textSelection.copyWith(
            baseOffset: textSelection.start,
            extentOffset: textSelection.start,
          );
        }
        // The cursor is at the beginning.
        // if (textSelection.start == 0) {
        //   return;
        // }
        // Delete the previous character
        //final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
        else
          {

            final offset = 1;
            final newStart = textSelection.start - offset;
            final newEnd = textSelection.start;
            final newText = text.replaceRange(
              newStart,
              newEnd,
              '',
            );
            userInput.text = newText;
            userInput.selection = textSelection.copyWith(
              baseOffset: newStart,
              extentOffset: newStart,
            );
          }
      }
    if(userInput.text.length == 0)
      setState(() {
        answer="";
      });
    else if (isOperator(userInput.text[userInput.text.length - 1]))
      evaluate(userInput.text.substring(0,userInput.text.length-1));
    else
      evaluate(userInput.text);
  }

  void evaluate(String input) {
    String finaluserinput = input.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      answer = eval.toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    precision = data['precision'];
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "General Caculator",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: myDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: TextField(
                      readOnly: true,
                      showCursor: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: userInput,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      answer,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index){
                  //clear button
                  if(index == 0){
                    return MyButton(
                      buttontapped: (){
                        setState(() {
                          userInput.text='';
                          answer='0';
                        });
                      },
                      color: Colors.green[100],
                      textColor: Colors.black,
                      buttonText: buttons[index],
                    );
                  }
                  // else if(index == 1){
                  //   return MyButton(
                  //     buttonText: buttons[index],
                  //     color: Colors.blue[100],
                  //     textColor: Colors.black,
                  //   );
                  // }
                  // ^ button
                  else if(index == 2){
                    return MyButton(
                      buttontapped: (){
                        setState(() {
                          userInput.text += buttons[index];
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.blue[100],
                      textColor: Colors.black,
                    );
                  }
                  // Delete button
                  else if(index == 3){
                    return MyButton(
                      buttontapped: (){
                        backSpace();
                        // setState(() {
                        //   userInput.text = userInput.text.substring(0, userInput.text.length - 1);
                        // });
                        // if(userInput.text.length == 0)
                        //   answer="";
                        // else if (!isOperator(userInput.text[userInput.text.length - 1]))
                        //   evaluate();
                        },
                      buttonText: buttons[index],
                      color: Colors.blue[100],
                      textColor: Colors.black,
                    );
                  }
                  // Equal button
                  else if (index == 18) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userInput.text = answer;
                          answer="";
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.lightGreen[700],
                      textColor: Colors.white,
                    );
                  }
                  //other buttons
                  else{
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          //userInput.text += buttons[index];
                          insertText(buttons[index]);
                        });
                        isOperator(buttons[index]) ? null : evaluate(userInput.text);
                      },
                      buttonText: buttons[index],
                      color: isOperator(buttons[index])
                          ? Colors.blueAccent
                          : Colors.grey[200],
                      textColor: isOperator(buttons[index])
                          ? Colors.white
                          : Colors.black,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}