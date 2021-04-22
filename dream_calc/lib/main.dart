import 'package:flutter/material.dart';
import 'package:dream_calc/genCalc.dart';
import 'package:dream_calc/lcmhcmCalc.dart';
import 'package:dream_calc/centTendCalc.dart';

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


