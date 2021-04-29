import 'dart:math';


String volume (String userInput, String dropDownValue, int precision) {
  const pi = 3.141592653589793238;
  if(dropDownValue == "CUBE"){
    var side = double.parse(userInput);
    return (side*side*side).toString();
  }
  else if(dropDownValue == "SPHERE"){
    return (4*pi*pow(double.parse(userInput),3)/3).toStringAsPrecision(precision);
  }
  else if (dropDownValue == "CUBOID"){
    var arr = userInput.split(",");
    return (double.parse(arr[0])*double.parse(arr[1])*double.parse(arr[2])).toStringAsPrecision(precision);
  }
  else if (dropDownValue == "CYLINDER"){
    var arr = userInput.split(",");
    return (pi*pow((double.parse(arr[0])),2)*double.parse(arr[1])).toStringAsPrecision(precision);
  }
  else if(dropDownValue == "CONE"){
    var arr = userInput.split(",");
    return ((1/3)*pi*pow(double.parse(arr[0]),2)*double.parse(arr[1])).toStringAsPrecision(precision);
  }

  return "";

}