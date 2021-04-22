import 'package:flutter/material.dart';

class lcmhcfCalc extends StatefulWidget {
  @override
  _lcmhcfCalcState createState() => _lcmhcfCalcState();
}

class _lcmhcfCalcState extends State<lcmhcfCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
