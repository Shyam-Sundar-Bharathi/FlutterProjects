extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String percentOne(String userInputOne, String userInputTwo, int precision){
  if(userInputOne == '' || userInputTwo == '')
    return 'answer';
  return (double.parse(userInputOne) * double.parse(userInputTwo) / 100).toStringAsFixedNoZero(precision);
}

String percentTwo(String userInputThree, String userInputFour, int precision){
  if(userInputThree == '' || userInputFour == '')
    return 'answer';
  return (double.parse(userInputThree) / double.parse(userInputFour) * 100).toStringAsFixedNoZero(precision);
}

