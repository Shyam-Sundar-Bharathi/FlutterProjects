import 'dart:math';
import 'package:extended_math/extended_math.dart';
import 'package:dream_calc/services/formatNumber.dart';

List<String> quadCalc(String A, String B, String C){
  double a = double.parse(A);
  double b = double.parse(B);
  double c = double.parse(C);
  final equation = QuadraticEquation(a: a, b: b, c: c);
  bool isReal = b*b - 4*a*c >= 0? true : false;
  double d = (b*b)-(4*a*c);
  String rootOne, rootTwo;
  if(isReal){
    rootOne = ((-b + pow(d,0.5))/2*a).toStringAsFixedNoZero(4);
    rootTwo = ((-b - pow(d,0.5))/2*a).toStringAsFixedNoZero(4);
  }
  else{
    rootOne = (-b/(2*a)).toStringAsFixedNoZero(4) + ' + ' + (pow(-d,0.5)/2*a).toStringAsFixedNoZero(4) + ' i';
    rootTwo = (-b/(2*a)).toStringAsFixedNoZero(4) + ' - ' + (pow(-d,0.5)/2*a).toStringAsFixedNoZero(4) + ' i';
  }

  return [rootOne,rootTwo,equation.discriminant().toDouble().toStringAsFixedNoZero(4)];
}