import 'package:dream_calc/services/formatNumber.dart';

String currencyCalc(String userInput, double exchangeRate){
  if(userInput == '')
    return '';
  return formatNumber((double.parse(userInput)*exchangeRate),isCurrency: true);
}