import 'dart:async';

import 'package:extended_math/extended_math.dart';
import 'package:dream_calc/services/formatNumber.dart';

List<String> cubeCalc(String A, String B, String C, String D){
  final equation = CubicEquation(a: double.parse(A),b: double.parse(B),c: double.parse(C),d: int.parse(D));
  List rootsRaw = [equation.calculate()['x1'].toString(), equation.calculate()['x2'].toString(), equation.calculate()['x3'].toString()];
  List rootsFinal = ['','',''];
  List rootOne = rootsRaw[0].split('+');
  List rootTwo = rootsRaw[1].split('+');
  List rootThree = rootsRaw[2].split('+');
  List sign = ['+','+','+'];
  if(rootOne[1].toString()[1] == '-'){
    sign[0] = '-';
    rootOne[1] = rootOne[1].toString().substring(2,);
  }
  if(rootTwo[1].toString()[1] == '-'){
    sign[1] = '-';
    rootTwo[1] = rootTwo[1].toString().substring(2,);
  }
  if(rootThree[1].toString()[1] == '-'){
    sign[1] = '-';
    rootThree[1] = rootThree[1].toString().substring(2,);
  }

  if(rootOne[1] == ' 0i'){
    rootOne[1] = '';
    sign[0] = '';
  }
  if(rootTwo[1] == ' 0i'){
    rootTwo[1] = '';
    sign[1] = '';
  }
  if(rootThree[1] == ' 0i'){
    rootThree[1] = '';
    sign[2] = '';
  }

  rootOne[0] = double.parse(rootOne[0]).toStringAsFixedNoZero(4);
  rootTwo[0] = double.parse(rootTwo[0]).toStringAsFixedNoZero(4);
  rootThree[0] = double.parse(rootThree[0]).toStringAsFixedNoZero(4);

  if(rootOne[1]!=''){
    rootOne[1] = double.parse(rootOne[1].toString().replaceAll('i', '')).toStringAsFixedNoZero(4) + ' i';
  }
  if(rootTwo[1]!=''){
    rootTwo[1] = double.parse(rootTwo[1].toString().replaceAll('i', '')).toStringAsFixedNoZero(4) + ' i';
  }
  if(rootThree[1]!=''){
    rootThree[1] = double.parse(rootThree[1].toString().replaceAll('i', '')).toStringAsFixedNoZero(4) + ' i';
  }


  rootsFinal[0] = rootOne[0] + ' ' + sign[0] + ' ' + rootOne[1];
  rootsFinal[1] = rootTwo[0] + ' ' + sign[1] + ' ' + rootTwo[1];
  rootsFinal[2] = rootThree[0] + ' ' + sign[2] + ' ' + rootThree[1];
  return [rootsFinal[0],rootsFinal[1],rootsFinal[2],equation.discriminant().toDouble().toStringAsFixedNoZero(4)];
}