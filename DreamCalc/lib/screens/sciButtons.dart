import 'package:dream_calc/services/buttons.dart';
import 'package:flutter/material.dart';

class sciButtons extends StatefulWidget {
  const sciButtons({Key key}) : super(key: key);

  @override
  _sciButtonsState createState() => _sciButtonsState();
}

class _sciButtonsState extends State<sciButtons> {

  List<String> buttons = [
    'Gen',
    'sin',
    'cos',
    'tan',
    'π',
    'sin⁻¹',
    'cos⁻¹',
    'tan⁻¹',
    'e',
    'log₂',
    'log₁₀',
    'ln',
    'Φ',
    '√',
    '∛',
    '∜',
    '|x|',
    '%',
    '+/-',
    '^',
    'x²',
    'x³',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Scientific Calculator',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.fromLTRB(10,50,10,20),
        color: Colors.black87,
        child: GridView.builder(
          itemCount: buttons.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisCount: 4,
          ),
          itemBuilder: (BuildContext context, int index){
            if(index == 0){
              return MyButton(
                buttontapped: (){
                  //tapped(index);
                  Navigator.pop(context);
                },
                //color: tappedIndex == index? Colors.green[700] : Colors.green[300],
                color: Colors.green,
                textColor: Colors.white,
                buttonText: buttons[index],
              );
            }
            //other buttons
            else{
              return MyButton(
                buttonText: buttons[index],
                color: Colors.white,
                textColor: Colors.black,
                buttontapped: (){
                  Navigator.pop(context,buttons[index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
