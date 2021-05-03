import 'package:dream_calc/services/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dream_calc/calcs/unitCalc.dart';

class unitconversion extends StatefulWidget {
  @override
  _unitconversionState createState() => _unitconversionState();
}

class _unitconversionState extends State<unitconversion> {

  bool inFocusOne = false;
  bool inFocusTwo = false;
  String answer = "answer";
  TextEditingController userInputOne = new TextEditingController();
  TextEditingController userInputTwo = new TextEditingController();
  String unitElementsValue = "LENGTH";
  List<String> unitElements = ["LENGTH","MASS","TEMPERATURE"];
  Map unitChoices = {
    'LENGTH' : ['meter','centimeter','kilometer','inch','mile'],
    'MASS' : ['kilogram','gram','pound', 'ounce'],
    'TEMPERATURE' : ['celcius','kelvin','farenheit'],
  };
  String unitChoiceOne;
  String unitChoiceTwo;

  void initState() {
    unitChoiceOne = unitChoices[unitElementsValue][0];
    unitChoiceTwo = unitChoices[unitElementsValue][1];
    // selectedCategory = widget.defaultSelection;
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Unit Conversion',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        drawer: myDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                DropdownButton<String>(
                  value: unitElementsValue,
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
                      unitElementsValue = newValue;
                    });
                  },
                  items: unitElements.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: (){
                          setState(() {
                            inFocusOne = true;
                            inFocusTwo = false;
                            answer =  "";
                            userInputTwo.text=answer;
                          });
                        },
                        onChanged: (text){
                          inFocusOne?
                          setState((){
                            userInputTwo.text = convert(unitElementsValue, unitChoiceOne, unitChoiceTwo, userInputOne.text);
                          })
                              : null;
                        },
                        controller: userInputOne,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9. ]'), allow: true),
                        ],
                         decoration: InputDecoration(
                           border:OutlineInputBorder(
                             borderSide: const BorderSide(color: Colors.black, width: 2.0),
                             borderRadius: BorderRadius.zero,
                           ),
                           labelText: inFocusTwo? 'answer' : 'Enter',
                           labelStyle: TextStyle(
                             fontSize: 20.0,
                           ),
                         ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    DropdownButton<String>(
                      value: unitChoiceOne,
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
                          unitChoiceOne = newValue;
                        });
                      },
                      items: unitChoices[unitElementsValue].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )],
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: (){
                          setState(() {
                            inFocusTwo = true;
                            inFocusOne = false;
                            answer = "";
                            userInputOne.text = answer;
                          });
                        },
                        onChanged: (text){
                          inFocusTwo?
                          setState((){
                            userInputOne.text = convert(unitElementsValue, unitChoiceTwo, unitChoiceOne, userInputTwo.text);
                          })
                              : null;
                        },
                        controller: userInputTwo,
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
                          labelText: inFocusOne? 'answer' : 'Enter',
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    DropdownButton<String>(
                      value: unitChoiceTwo,
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
                          unitChoiceTwo = newValue;
                        });
                      },
                      items: unitChoices[unitElementsValue].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
