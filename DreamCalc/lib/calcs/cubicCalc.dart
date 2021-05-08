import 'package:extended_math/extended_math.dart';
import 'package:dream_calc/services/formatNumber.dart';

List<String> cubeCalc(String A, String B, String C, String D){
  final equation = CubicEquation(a: double.parse(A),b: double.parse(B),c: double.parse(C),d: double.parse(D));
  print(equation.calculate());
  return ['0','1','2',equation.discriminant().toDouble().toStringAsFixedNoZero(4)];
}