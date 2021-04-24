import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class areaCalc extends StatefulWidget {
  @override
  _areaCalcState createState() => _areaCalcState();
}

class _areaCalcState extends State<areaCalc> {

  var choice = "Answer";
  var result = "0";
  TextEditingController userInput = new TextEditingController();
  String dropDownValue = "SQUARE";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Area of 2D Shapes Caculator",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: userInput,
                keyboardType: TextInputType.number,
                enableInteractiveSelection: true,
                inputFormatters: [
                  FilteringTextInputFormatter(RegExp('[0-9, ]'), allow: true),
                ],
                decoration: InputDecoration(
                  labelText: "Enter ",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                  minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                ),
                onPressed: () {
                  setState(() {
                    //result = lcm(userInput.text);
                  });
                },
                child: Text(
                  "AREA",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 40),
              DropdownButton<String>(
                value: dropDownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 72,
                elevation: 16,
                style: const TextStyle(
                    color: Colors.deepPurple,
                  fontSize: 20,
                ),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropDownValue = newValue;
                  });
                },
                items: <String>['SQUARE','CIRCLE','RECTANGLE','TRIANGLE','PARALLELOGRAM','RHOMBUS'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 40),

              Text(
                "AREA OF $dropDownValue = $result",
                style: TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//test_calc write a widget using switch case and try to return in scaffold here
