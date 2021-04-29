
import 'package:flutter/material.dart';
class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}
int sliderValue =  8;
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
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        child: Column(
          children: [
            Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Text(
                    "Set precision for decimal values",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Slider(
                    value: sliderValue.toDouble(),
                    onChanged: (double newValue){
                      setState(() {
                        sliderValue = newValue.round();
                        if (sliderValue <= 4){
                          alertMessage = " (Not recommended)";
                        }
                        else if(sliderValue == 10){
                          alertMessage = " (Perfect!)";
                        }
                        else{
                          alertMessage = "";
                        }
                      });
                    },
                    min: 1.0,
                    max: 10.0,
                    divisions: 10,
                    label: "Set Precision",
                    activeColor: Colors.blue[900],
                    inactiveColor: Colors.blue[200],
                  ),
                  Text(
                    sliderValue.toString() + alertMessage,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(),
        child: Text("APPLY"),
        onPressed: (){
            Navigator.pop(context, {
              'precision': sliderValue
            }
            );
        },
      ),
    );
  }
}
