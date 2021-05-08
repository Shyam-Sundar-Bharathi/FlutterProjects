import 'dart:math';
import 'package:dream_calc/services/formatNumber.dart';

String volume (String userInput, String dropDownValue, int precision) {
  if(userInput == '')
    return '0';
  const pi = 3.141592653589793238;
  if(dropDownValue == "CUBE"){
    var side = double.parse(userInput);
    return (side*side*side).toStringAsFixedNoZero(precision);
  }
  else if(dropDownValue == "SPHERE"){
    return (4*pi*pow(double.parse(userInput),3)/3).toStringAsFixedNoZero(precision);
  }
  else if (dropDownValue == "CUBOID"){
    var arr = userInput.split(",");
    return (double.parse(arr[0])*double.parse(arr[1])*double.parse(arr[2])).toStringAsFixedNoZero(precision);
  }
  else if (dropDownValue == "CYLINDER"){
    var arr = userInput.split(",");
    return (pi*pow((double.parse(arr[0])),2)*double.parse(arr[1])).toStringAsFixedNoZero(precision);
  }
  else if(dropDownValue == "CONE"){
    var arr = userInput.split(",");
    return ((1/3)*pi*pow(double.parse(arr[0]),2)*double.parse(arr[1])).toStringAsFixedNoZero(precision);
  }

  return "";

}