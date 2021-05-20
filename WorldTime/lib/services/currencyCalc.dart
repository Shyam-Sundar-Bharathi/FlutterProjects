import 'package:world_time/services/formatNumber.dart';

String currencyCalc(String userInput, double exchangeRate){
  if(userInput == '')
    return '';
  return formatNumber((double.parse(userInput)*exchangeRate),isCurrency: true);
}