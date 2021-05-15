import 'package:extended_math/extended_math.dart';
import 'package:dream_calc/services/formatNumber.dart';

String mod(String a, String b){
  final c = Complex(re: double.parse(a), im: double.parse(b));
  return c.module.toDouble().toStringAsFixedNoZero(4);
}

String add(String a1, String b1, String a2, String b2){
  double A1 = double.parse(a1);
  double B1 = double.parse(b1);
  double A2 = double.parse(a2);
  double B2 = double.parse(b2);
  String sign = B1 + B2 > 0 ? '+' : '';
  return (A1+A2).toStringAsFixedNoZero(4) + 'i ' + sign + (B1+B2).toStringAsFixedNoZero(4) + 'i';
}

String sub(String a1, String b1, String a2, String b2){
  double A1 = double.parse(a1);
  double B1 = double.parse(b1);
  double A2 = double.parse(a2);
  double B2 = double.parse(b2);
  String sign = B1 - B2 > 0 ? '+' : '';
  return (A1-A2).toStringAsFixedNoZero(4) + 'i ' + sign + (B1-B2).toStringAsFixedNoZero(4) + 'i';
}

String power(String a, String b, int power){
  final c = Complex(re: double.parse(a), im: double.parse(b));
  return c.pow(power).toString();
}

String arg(String a, String b){
  final c = Complex(re: double.parse(a), im: double.parse(b));
  return c.argument.toDouble().toStringAsFixedNoZero(4);
}

String roots(String a, String b, int power){
  final c = Complex(re: double.parse(a), im: double.parse(b));
  List roots = c.rootsOf(power);
  if(power == 2){
    String root1 = roots[0];
    String root2 = roots[1];
  }
  return c.rootsOf(power).toString();
}