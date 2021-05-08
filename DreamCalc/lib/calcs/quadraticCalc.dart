import 'dart:math';

extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

List<String> quadCalc(String A, String B, String C){
  double a = double.parse(A);
  double b = double.parse(B);
  double c = double.parse(C);
  bool isReal = b*b - 4*a*c >= 0? true : false;
  double d = (b*b)-(4*a*c);
  String disc = d.toString();
  String rootOne, rootTwo;
  if(isReal){
    rootOne = ((-b + pow(d,0.5))/2*a).toString();
    rootTwo = ((-b - pow(d,0.5))/2*a).toString();
  }
  else{
    rootOne = (-b/(2*a)).toStringAsFixedNoZero(4) + ' + ' + (pow(-d,0.5)/2*a).toStringAsFixedNoZero(4) + ' i';
    rootTwo = (-b/(2*a)).toStringAsFixedNoZero(4) + ' - ' + (pow(-d,0.5)/2*a).toStringAsFixedNoZero(4) + ' i';
  }

  return [rootOne,rootTwo,disc];
}