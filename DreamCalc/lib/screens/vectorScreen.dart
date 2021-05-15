import 'package:dream_calc/calcs/vectorCalc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class vector extends StatefulWidget {
  const vector({Key key}) : super(key: key);

  @override
  _vectorState createState() => _vectorState();
}

class _vectorState extends State<vector> {

  String choice = "" , result = "";
  TextEditingController a1 = new TextEditingController();
  TextEditingController b1 = new TextEditingController();
  TextEditingController c1 = new TextEditingController();
  TextEditingController a2 = new TextEditingController();
  TextEditingController b2 = new TextEditingController();
  TextEditingController c2 = new TextEditingController();

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
            'VECTOR',
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
                      child: Text(
                        'A : ',
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
                          ' i +',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
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
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' j +',
                        style: TextStyle(
                          fontSize: 25,
                            fontWeight: FontWeight.bold
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
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' k',
                        style: TextStyle(
                          fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'B : ',
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
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' i +',
                        style: TextStyle(
                          fontSize: 25,
                            fontWeight: FontWeight.bold
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
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' j +',
                        style: TextStyle(
                          fontSize: 25,
                            fontWeight: FontWeight.bold
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
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ' k',
                        style: TextStyle(
                          fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "| A |";
                          result = mod(a1.text, b1.text, c1.text);
                        });
                      },
                      child: Text(
                        "| A |",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "| B |";
                          result = mod(a2.text, b2.text, c2.text);
                        });
                      },
                      child: Text(
                        "| B |",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "A + B";
                          result = add(a1.text,b1.text,c1.text,a2.text,b2.text,c2.text);
                        });
                      },
                      child: Text(
                        "A + B",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "A - B";
                          result = sub(a1.text,b1.text,c1.text,a2.text,b2.text,c2.text);
                        });
                      },
                      child: Text(
                        "A - B",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "A.B";
                          result = dot(a1.text,b1.text,c1.text,a2.text,b2.text,c2.text);
                        });
                      },
                      child: Text(
                        "A . B",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "A x B";
                          result = cross(a1.text,b1.text,c1.text,a2.text,b2.text,c2.text);
                        });
                      },
                      child: Text(
                        "A x B",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "A * B";
                          result = star(a1.text,b1.text,c1.text,a2.text,b2.text,c2.text);
                        });
                      },
                      child: Text(
                        "A * B",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                        minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          choice = "Angle";
                          result = angle(a1.text,b1.text,c1.text,a2.text,b2.text,c2.text);
                        });
                      },
                      child: Text(
                        "∠",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[300]),
                    //     minimumSize: MaterialStateProperty.resolveWith((states) => Size(70, 50)),
                    //   ),
                    //   onPressed: () {
                    //     FocusScope.of(context).requestFocus(FocusNode());
                    //   },
                    //   child: Text(
                    //     "A + B",
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        (choice=="" || result =="") ? " " : "$choice = $result",
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
