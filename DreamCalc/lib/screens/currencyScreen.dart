import 'package:dream_calc/calcs/currencyCalc.dart';
import 'package:dream_calc/services/drawer.dart';
import 'package:dream_calc/services/currencyConversion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
class currency extends StatefulWidget {
  const currency({Key key}) : super(key: key);
  @override
  _currencyState createState() => _currencyState();
}

class _currencyState extends State<currency> {

  TextEditingController userInput = new TextEditingController();
  List<String> currencies = ['Australian Dollar','Bahraini Dinar','Bangladeshi Taka','British Pound','Canadian Dollar','European Euro','Hong Kong Dollar', 'US Dollar','Indian Rupee','UAE Dirham','Japanese Yen','Singapore Dollar'];
  String dropDownValueFrom = 'US Dollar';
  String dropDownValueTo = 'Indian Rupee';
  double exchangeRate;
  String answer = "";

  void intialGet() async {
    setState(() async {
      exchangeRate = await getExchangeRate(codes[dropDownValueFrom], codes[dropDownValueTo]);
    });
  }

  void initState() {
    intialGet();
  }

  Map codes = {
    'US Dollar' : 'USD',
    'Indian Rupee' : 'INR',
    'Japanese Yen' : 'JPY',
    'European Euro' : 'EUR',
    'UAE Dirham' : 'AED',
    'Singapore Dollar' : 'SGD',
    'Australian Dollar' : 'AUD',
    'Bahraini Dinar' : 'BHD',
    'Bangladeshi Taka' : 'BDT',
    'British Pound' : 'GBP',
    'Canadian Dollar' : 'CAD',
    'Hong Kong Dollar' : 'HKD'
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Currency Conversion',
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
            padding: EdgeInsets.all(10),
            child: Column(
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                      'From Currency',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<String>(
                        value: dropDownValueFrom,
                        //isExpanded: false,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 50,
                        elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) async {
                          setState(() {
                            dropDownValueFrom = newValue;

                          });
                          exchangeRate = await getExchangeRate(codes[dropDownValueFrom], codes[dropDownValueTo]);
                          setState(() {
                            answer = currencyCalc(userInput.text, exchangeRate);
                          });
                        },
                        items: currencies.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.end,
                          controller: userInput,
                          keyboardType: TextInputType.number,
                          enableInteractiveSelection: true,
                          onChanged: (text){
                            setState(() {
                              answer = currencyCalc(userInput.text, exchangeRate);
                            });
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter(RegExp('[0-9. ]'), allow: true),
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
                      SizedBox(width: 20,)
                    ],
                  ),
                  SizedBox(height: 60,),
                  Text(
                    'To Currency',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropDownValueTo,
                        //isExpanded: true,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 50,
                        elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) async {
                          setState(() {
                            dropDownValueTo = newValue;
                          });
                          exchangeRate = await getExchangeRate(codes[dropDownValueFrom], codes[dropDownValueTo]);
                          setState(() {
                            answer = currencyCalc(userInput.text, exchangeRate);
                          });
                        },
                        items: currencies.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Center(
                            child: Text(
                              answer,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height: 50,),
                  Center(
                    child: Text(
                      'The exchange rate is ${exchangeRate}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
          ),
          ),
        )
        );
  }
}
