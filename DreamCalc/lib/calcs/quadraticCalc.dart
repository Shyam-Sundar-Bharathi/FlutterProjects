import 'dart:math';

extension Ex on double {
  String toStringAsFixedNoZero(int n) {
    String result = double.parse(this.toStringAsFixed(n)).toString();
    int length = result.length;
    if(result.substring(length-2,length) == '.0'){
      print('ends with');
      return result.substring(0,length-2);
    }
    else {
      print('does not');
      return result;
    }
  }

}

List<String> quadCalc(String A, String B, String C){
  double a = double.parse(A);
  double b = double.parse(B);
  double c = double.parse(C);
  bool isReal = b*b - 4*a*c >= 0? true : false;
  double d = (b*b)-(4*a*c);
  String disc = d.toStringAsFixedNoZero(4);
  String rootOne, rootTwo;
  if(isReal){
    rootOne = ((-b + pow(d,0.5))/2*a).toStringAsFixedNoZero(4);
    rootTwo = ((-b - pow(d,0.5))/2*a).toStringAsFixedNoZero(4);
  }
  else{
    rootOne = (-b/(2*a)).toStringAsFixedNoZero(4) + ' + ' + (pow(-d,0.5)/2*a).toStringAsFixedNoZero(4) + ' i';
    rootTwo = (-b/(2*a)).toStringAsFixedNoZero(4) + ' - ' + (pow(-d,0.5)/2*a).toStringAsFixedNoZero(4) + ' i';
  }

  return [rootOne,rootTwo,disc];
}