import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String area (String userInput, String dropDownValue) {
  if(dropDownValue == "SQUARE"){
    var side = double.parse(userInput);
    return (side*side).toString();
  }
  else if(dropDownValue == "CIRCLE"){
    return (3.141592653589793238*double.parse(userInput)*double.parse(userInput)).toStringAsPrecision(8);
  }
  else if (dropDownValue == "RECTANGLE"){
    var arr = userInput.split(",");
    return (double.parse(arr[0])*double.parse(arr[1])).toString();
  }
  else if (dropDownValue == "TRIANGLE"){
    var arr = userInput.split(",");
    if (arr.length == 2){
      return (0.5 * double.parse(arr[0]) * double.parse(arr[1])).toString();
    }
    else if(arr.length == 3){
      var a = double.parse(arr[0]);
      var b = double.parse(arr[1]);
      var c = double.parse(arr[2]);
      var s = (a+b+c)/2;
      return pow(s*(s-a)*(s-b)*(s-c),0.5).toStringAsPrecision(8);
    }
  }

  else if(dropDownValue == "PARALLELOGRAM"){
    var arr = userInput.split(",");
    return (double.parse(arr[0]) * double.parse(arr[1])).toString();
  }

  else if(dropDownValue == "RHOMBUS"){
    var arr = userInput.split(",");
    return (0.5 * double.parse(arr[0]) * double.parse(arr[1])).toString();
  }
}