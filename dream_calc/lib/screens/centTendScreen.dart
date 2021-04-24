import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dream_calc/calcs/lcmhcfCalc.dart';
import 'package:dream_calc/calcs/centTendCalc.dart';
class centTendCalc extends StatefulWidget {
  @override
  _centTendCalcState createState() => _centTendCalcState();
}

class _centTendCalcState extends State<centTendCalc> {
  var choice = "Answer";
  var result = "0";
  TextEditingController userInput = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Central Tendencies Caculator",
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
                  FilteringTextInputFormatter(RegExp('[0-9,. ]'), allow: true),
                ],
                decoration: InputDecoration(
                  labelText: "Enter comma separated numbers",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                      minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                    ),
                    onPressed: () {
                      setState(() {
                        choice = "MEAN";
                        result = mean(userInput.text);
                      });
                    },
                    child: Text(
                      "MEAN",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                      minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                    ),
                    onPressed: () {
                      setState(() {
                        choice = "MEDIAN";
                        result = median(userInput.text);
                      });
                    },
                    child: Text(
                      "MEDIAN",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                      minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                    ),
                    onPressed: () {
                      setState(() {
                        choice = "MODE";
                        result = mode(userInput.text);
                      });
                    },
                    child: Text(
                      "MODE",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                      minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                    ),
                    onPressed: () {
                      setState(() {
                        choice = "RANGE";
                        result = range(userInput.text);
                      });
                    },
                    child: Text(
                      "RANGE",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "$choice = $result",
                style: TextStyle(
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
