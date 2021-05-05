
import 'package:flutter/material.dart';
class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

String dropDownColor = "BLUE";
int sliderValue =  4;
String alertMessage = "";
class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton.icon(
          onPressed: (){},
          icon: Icon(
              Icons.settings,
            color: Colors.white,
          ),
          label: Text(
            "Settings",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: Column(
            children: [
              Card(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Set precision for decimal values",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    Slider(
                      value: sliderValue.toDouble(),
                      onChanged: (double newValue){
                        setState(() {
                          sliderValue = newValue.round();
                          if (sliderValue <= 2){
                            alertMessage = " (Not recommended)";
                          }
                          else if(sliderValue >= 9){
                            alertMessage = " (Oh! You're a scientist.)";
                          }
                          else if(sliderValue >=6)
                            alertMessage = " (Precise results on the way!)";
                          else{
                            alertMessage = " (Good enough)";
                          }
                        });
                      },
                      min: 1.0,
                      max: 10.0,
                      divisions: 10,
                      label: "Precision",
                      activeColor: Colors.blue[900],
                      inactiveColor: Colors.blue[200],
                    ),
                    Text(
                      sliderValue.toString() + alertMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Higher precision means more numbers after the decimal point and greater accuracy of the answer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Card(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Colour Theme",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: dropDownColor,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 72,
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                      underline: Container(
                        height: 2,
                      ),
                      onChanged: (String newColor) {
                        setState(() {
                          dropDownColor = newColor;
                        });
                      },
                      items: <String>['BLUE','GREEN','PINK','BLACK','PURPLE','ORANGE'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(),
        child: Text("APPLY"),
        onPressed: (){
            Navigator.pop(context, {
              'precision': sliderValue,
              'colourTheme' : dropDownColor,
            }
            );
        },
      ),
    );
  }
}
