extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String reverseString(String number){
  String reversedNumber = "";
  int numberOfCharacters = number.length - 1;
  while(numberOfCharacters>-1){
    reversedNumber += number[numberOfCharacters];
    numberOfCharacters--;
  }
  return reversedNumber;
}

String formatNumber(double number, {bool isCurrency = false}){
  String formattedNumber = "";
  int n=0;
  String decimal;
  if(isCurrency){

    if(number.toString().contains('.')) {
      decimal = (number.toString().split('.')[1]);
      if(decimal.length>=2)
        decimal = decimal.substring(0,2);
      else if(decimal.length>=1)
        decimal = decimal.substring(0,1);
    }
    else
      decimal = '00';
  }
  else
    decimal = number.toString().split('.')[1];


  int numberI = number.truncate();
  if(numberI == 0)
    return '0.' + decimal;
  while(numberI>0){
    n++;
    formattedNumber += (numberI%10).toString();
    numberI = (numberI/10).toInt();
    if(n==3 && numberI != 0){
      formattedNumber += ",";
      n=0;
    }
  }
  return reverseString(formattedNumber) + '.' + decimal;
}