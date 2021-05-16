import 'package:dream_calc/services/formatNumber.dart';
import 'package:extended_math/extended_math.dart';

String calcxy(String a1, String b1, String c1, String a2, String b2, String c2){
  double A1 = double.parse(a1);
  double B1 = double.parse(b1);
  double C1 = double.parse(c1);
  double A2 = double.parse(a2);
  double B2 = double.parse(b2);
  double C2 = double.parse(c2);
  double x,y;
  if(A1*B2 == A2*B1){
    if(A1*C2 == A2*C1){
      return "INFINITE SOLUTIONS";
    }
    else{
      return "NO SOLUTION";
    }
  }
  else{
    final dx = SquareMatrix([[C1,B1],[C2,B2]]);
    final dy = SquareMatrix([[A1,C1],[A2,C2]]);
    final d = SquareMatrix([[A1,B1],[A2,B2]]);
    x = (dx.determinant())/(d.determinant());
    y = (dy.determinant())/(d.determinant());

  }
  return "x = " + x.toStringAsFixedNoZero(4) + "\ny = " + y.toStringAsFixedNoZero(4);
}