import 'dart:core';

import 'package:dream_calc/calcs/percentCalc.dart';
import 'package:dream_calc/services/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dream_calc/calcs/percentCalc.dart';
class percentCalc extends StatefulWidget {
  @override
  _percentCalcState createState() => _percentCalcState();
}

class _percentCalcState extends State<percentCalc> {

  Map data = {
    'precision' : 4,
  };
  TextEditingController userInputOne = new TextEditingController();
  TextEditingController userInputTwo = new TextEditingController();
  TextEditingController userInputThree = new TextEditingController();
  TextEditingController userInputFour = new TextEditingController();
  String answer1 = 'answer';
  String answer2 = 'answer';

  @override
  Widget build(BuildContext context) {

    data = data.isEmpty ? data : ModalRoute.of(context).settings.arguments;
    precision = data['precision'];

    return GestureDetector(
        onTap: () {
      FocusScope.of(context).requestFocus(FocusNode());
    },
    child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'PERCENTAGE CALCULATOR',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      //drawer: myDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (text){
                          setState(() {
                            answer1 = percentOne(userInputOne.text,userInputTwo.text, precision);
                          });
                        },
                        controller: userInputOne,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9,. ]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelText: "Enter",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        "  % of  ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (text){
                          setState(() {
                            answer1 = percentOne(userInputOne.text,userInputTwo.text,precision);
                          });
                        },
                        controller: userInputTwo,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelText: "Enter",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                FittedBox(
                  child:
                  Text(
                    'is',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        answer1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 150,),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (text){
                          setState(() {
                            answer2 = percentTwo(userInputThree.text,userInputFour.text,precision);
                          });
                        },
                        controller: userInputThree,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9,. ]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelText: "Enter",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "  of  ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (text){
                          setState(() {
                            answer2 = percentTwo(userInputThree.text,userInputFour.text,precision);
                          });
                        },
                        controller: userInputFour,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9,. ]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelText: "Enter",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  "  is  ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        answer2 + " %",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
    );
}
}


