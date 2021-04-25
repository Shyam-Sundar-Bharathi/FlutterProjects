import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String volume (String userInput, String dropDownValue) {
  const pi = 3.141592653589793238;
  if(dropDownValue == "CUBE"){
    var side = double.parse(userInput);
    return (side*side*side).toString();
  }
  else if(dropDownValue == "SPHERE"){
    return (4*pi*pow(double.parse(userInput),3)/3).toStringAsPrecision(8);
  }
  else if (dropDownValue == "CUBOID"){
    var arr = userInput.split(",");
    return (double.parse(arr[0])*double.parse(arr[1])*double.parse(arr[2])).toString();
  }
  else if (dropDownValue == "CYLINDER"){
    var arr = userInput.split(",");
    return (pi*pow((double.parse(arr[0])),2)*double.parse(arr[1])).toStringAsPrecision(8);
  }

}