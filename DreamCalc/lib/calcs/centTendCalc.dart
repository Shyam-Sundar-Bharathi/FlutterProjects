import 'dart:math';

extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String centTend(String userInput, int precision, int choice){
  if(userInput == '')
    return '0';
  if(userInput.endsWith(','))
    userInput = userInput.substring(0,userInput.length-1);
  double result;
    switch(choice){
      case 0: result = mean(userInput);
      break;
      case 1: result = median(userInput);
      break;
      case 2: result = mode(userInput);
      break;
      case 3: result = stddev(userInput);
      break;
      case 4: result = variance(userInput);
      break;
      case 5: result = cv(userInput);
      break;
      case 6: result = range(userInput);
      break;
    }
  return result.toStringAsPrecision(precision);
}


double mean (String userInput) {
  if(userInput.endsWith(','))
    userInput = userInput.substring(0,userInput.length-1);
  var sArray = userInput.split(",");
  if(sArray.length == 1)
    return double.parse(sArray[0]);
  var iArray = [];
  var length = sArray.length;
  var iter = 0;
  for(iter=0; iter<length; iter++)
    iArray.add(double.parse(sArray[iter]));
  var sum = iArray.fold(0, (a, b) => a + b);
  print((sum/length).runtimeType);
  return (sum/length);
}

double median (String userInput) {
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
      return median;
    }
  median = (((iArray[((length-1)/2).floor()] + iArray[((length-1)/2).ceil()]))/2);
  return median;
}

double mode (String userInput) {
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
  return mode;
}

double range (String userInput) {
  var sArray = userInput.split(",");
  var iArray = [];
  var length = sArray.length;
  var iter = 0;
  for(iter=0; iter<length; iter++)
    iArray.add(double.parse(sArray[iter]));
  iArray.sort();
  return (iArray[length-1] - iArray[0]);

}

double variance (String userInput){
  var sArray = userInput.split(",");
  var length = sArray.length;
  var iter = 0;
  var result = 0.0;
  var avg = mean(userInput);
  for(iter=0; iter<length; iter++)
    result += pow(avg - double.parse(sArray[iter]), 2);
  result /= length;
  return result;

}

double stddev (String userInput){
  return (pow(variance(userInput),0.5));

}

double cv (String userInput){
  return (stddev(userInput)/(mean(userInput)));
}