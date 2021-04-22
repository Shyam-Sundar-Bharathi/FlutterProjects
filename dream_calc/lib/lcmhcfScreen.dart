import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dream_calc/lcmhcfCalc.dart';

class lcmhcfCalc extends StatefulWidget {
  @override
  _lcmhcfCalcState createState() => _lcmhcfCalcState();
}

class _lcmhcfCalcState extends State<lcmhcfCalc> {

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
            "LCM HCF Caculator",
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
                  labelText: "Enter comma separated numbers",
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        choice = "LCM";
                        result = lcm(userInput.text);
                      });
                    },
                    child: Text(
                      "LCM",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        choice = "HCF";
                        result = hcf(userInput.text);
                      });
                    },
                    child: Text(
                        "HCF",
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
