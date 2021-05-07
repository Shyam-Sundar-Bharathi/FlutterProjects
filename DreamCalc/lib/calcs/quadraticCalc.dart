import 'dart:math';

extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String quadCalc(String A, String B, String C){
  double a = double.parse(A);
  double b = double.parse(B);
  double c = double.parse(C);
  bool isReal = b*b - 4*a*c >= 0? true : false;
  double d = (b*b)-(4*a*c);
  String disc = d.toString();
  String root1, root2;
  if(isReal){
    root1 = ((-b + pow(d,0.5))/2*a).toString();
    root2 = ((-b - pow(d,0.5))/2*a).toString();
  }
  else{
    root1 = (-b/(2*a)).toString() + ' + ' + (pow(-d,0.5)/2*a).toString() + 'i';
    root2 = (-b/(2*a)).toString() + ' - ' + (pow(-d,0.5)/2*a).toString() + 'i';
  }
  print(isReal);
  print(disc);
  print(root1);
  print(root2);
  return '0';
}