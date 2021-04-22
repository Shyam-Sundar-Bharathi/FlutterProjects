import 'package:flutter/material.dart';
import 'package:dream_calc/genCalc.dart';
import 'package:dream_calc/lcmhcfScreen.dart';
import 'package:dream_calc/centTendScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => genCalc(),
      '/lcmhcf' : (context) => lcmhcfCalc(),
      '/centTend' : (context) => centTendCalc(),
    },
  ));
}


