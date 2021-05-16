import 'package:dream_calc/calcs/linearThreeCalc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class linearThree extends StatefulWidget {
  const linearThree({Key key}) : super(key: key);

  @override
  _linearThreeState createState() => _linearThreeState();
}

class _linearThreeState extends State<linearThree> {

  String result = "";
  TextEditingController a1 = new TextEditingController();
  TextEditingController b1 = new TextEditingController();
  TextEditingController c1 = new TextEditingController();
  TextEditingController d1 = new TextEditingController();
  TextEditingController a2 = new TextEditingController();
  TextEditingController b2 = new TextEditingController();
  TextEditingController c2 = new TextEditingController();
  TextEditingController d2 = new TextEditingController();
  TextEditingController a3 = new TextEditingController();
  TextEditingController b3 = new TextEditingController();
  TextEditingController c3 = new TextEditingController();
  TextEditingController d3 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'LINEAR EQUATION',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: a1,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' x + ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: b1,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' y + ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: c1,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' z =  ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: d1,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: a2,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' x + ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: b2,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' y + ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: c2,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' z =  ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: d2,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: a3,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' x + ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: b3,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' y + ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: c3,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' z =  ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.end,
                        controller: d3,
                        keyboardType: TextInputType.number,
                        enableInteractiveSelection: true,
                        onSubmitted: (text){},
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp('[0-9.-]'), allow: true),
                        ],
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.zero,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                    minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    setState(() {
                      result = calcxyz(a1.text, b1.text, c1.text, d1.text, a2.text, b2.text, c2.text, d2.text, a3.text, b3.text, c3.text, d3.text);
                    });
                  },
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        result==""? " ": result,
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
          ),
        ),
      ),
    );
  }
}
