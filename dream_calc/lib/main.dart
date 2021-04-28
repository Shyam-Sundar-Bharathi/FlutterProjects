import 'package:flutter/material.dart';
import 'package:dream_calc/screens/genScreen.dart';
import 'package:dream_calc/screens/lcmhcfScreen.dart';
import 'package:dream_calc/screens/centTendScreen.dart';
import 'package:dream_calc/screens/areaScreen.dart';
import 'package:dream_calc/screens/volumeScreen.dart';
import 'package:dream_calc/screens/settings.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => genCalc(),
      '/lcmhcf' : (context) => lcmhcfCalc(),
      '/centTend' : (context) => centTendCalc(),
      '/area' : (context) => areaCalc(),
      '/volume' : (context) => volumeCalc(),
      '/settings' : (context) => settings(),
    },
  ));
}


