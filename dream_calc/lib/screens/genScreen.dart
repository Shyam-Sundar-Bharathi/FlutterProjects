import 'package:flutter/material.dart';
import 'package:dream_calc/services/drawer.dart';
import 'package:dream_calc/services/buttons.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

class genCalc extends StatefulWidget {
  @override
  _genCalcState createState() => _genCalcState();
}

class _genCalcState extends State<genCalc> {

  var userInput = '';
  var answer = '';
  final List<String> buttons = [
    'CLR',
    '+/-',
    '%',
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

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }


  @override
  Widget build(BuildContext context) {
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
                    child: Text(
                      userInput,
                      style: TextStyle(
                        fontSize: 18,
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
                          userInput='';
                          answer='0';
                        });
                      },
                      color: Colors.green[100],
                      textColor: Colors.black,
                      buttonText: buttons[index],
                    );
                  }
                  //+/- button
                  else if(index == 1){
                    return MyButton(
                      buttonText: buttons[index],
                      color: Colors.blue[100],
                      textColor: Colors.black,
                    );
                  }
                  // % button
                  else if(index == 2){
                    return MyButton(
                      buttontapped: (){
                        setState(() {
                          userInput += buttons[index];
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
                        setState(() {
                          userInput = userInput.substring(0, userInput.length - 1);
                        });
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
                          equalPressed();
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
                          userInput += buttons[index];
                        });
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