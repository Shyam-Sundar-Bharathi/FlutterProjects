import 'package:flutter/material.dart';
import 'package:my_calculator/central_tendencies.dart';
import 'package:my_calculator/gen_calc.dart';
import 'package:my_calculator/poly_calc.dart';
import 'package:my_calculator/lcm_hcf_calc.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/' : (context) => gen_calc(),
      '/poly' : (context) => poly_calc(),
      '/lcmhcf' : (context) => lcm_hcf_calc(),
      '/cent_tend' : (context) => central_tendencies()
    },
  ));
}
