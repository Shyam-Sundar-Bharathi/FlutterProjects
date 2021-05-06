import 'dart:math';

extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String mean (String userInput, int precision) {
  if(userInput == '')
    return '0';
  var sArray = userInput.split(",");
  var iArray = [];
  var length = sArray.length;
  var iter = 0;
  for(iter=0; iter<length; iter++)
    iArray.add(double.parse(sArray[iter]));
  var sum = iArray.fold(0, (a, b) => a + b);
  var mean = sum/length;
  return mean.toStringAsFixedNoZero(precision);
}

String median (String userInput, int precision) {
  if(userInput == '')
    return '0';
  var sArray = userInput.split(",");
  var iArray = [];
  var length = sArray.length;
  var iter = 0;
  for(iter=0; iter<length; iter++)
    iArray.add(double.parse(sArray[iter]));
  iArray.sort();
  var median = 0.0;
  if(length % 2 == 1)
    {
      median = iArray[((length-1)/2).truncate()];
      return median.toString();
    }
  median = (((iArray[((length-1)/2).floor()] + iArray[((length-1)/2).ceil()]))/2);
  return median.toStringAsFixedNoZero(precision);
}

String mode (String userInput, int precision) {
  if(userInput == '')
    return '0';
  var sArray = userInput.split(",");
  var iArray = [];
  var length = sArray.length;
  var iter = 0;
  var mode = 0.0;
  for(iter=0; iter<length; iter++)
    iArray.add(double.parse(sArray[iter]));
  var popular = Map();

  iArray.forEach((number) {
    if(!popular.containsKey(number)) {
      popular[number] = 1;
    } else {
      popular[number] +=1;
    }
  });
  var values = [];
  popular.forEach((key, value) {
    values.add(value);
  });
  values.sort();
  var modalValue = values[values.length - 1];
  popular.forEach((key, value) {
    if(value == modalValue)
      mode=key;
  });
  return mode.toStringAsFixedNoZero(precision);
}

String range (String userInput, int precision) {
  if(userInput == '')
    return '0';
  var sArray = userInput.split(",");
  var iArray = [];
  var length = sArray.length;
  var iter = 0;
  for(iter=0; iter<length; iter++)
    iArray.add(double.parse(sArray[iter]));
  iArray.sort();
  return (iArray[length-1] - iArray[0]).toString();

}

String variance (String userInput, int precision){
  if(userInput == '')
    return '0';
  var sArray = userInput.split(",");
  var length = sArray.length;
  var iter = 0;
  var result = 0.0;
  var avg = double.parse(mean(userInput, precision));
  for(iter=0; iter<length; iter++)
    result += pow(avg - double.parse(sArray[iter]), 2);
  result /= length;
  return result.toStringAsFixedNoZero(precision);

}

String stddev (String userInput, int precision){
  if(userInput == '')
    return '0';
  return (pow(double.parse(variance(userInput, 10)),0.5)).toStringAsFixed(precision);

}

String cv (String userInput, int precision){
  if(userInput == '')
    return '0';
  return (double.parse(stddev(userInput, 10))/double.parse(mean(userInput, 10))).toStringAsFixedNoZero(precision);
}