extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String currencyCalc(String userInput, double exchangeRate){
  if(userInput == '')
    return '';
  return (double.parse(userInput)*exchangeRate).toStringAsFixedNoZero(3);
}