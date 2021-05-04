import 'package:unit_converter/unit_converter.dart';
String convert(String unitElement, String unitChoiceOne, String unitChoiceTwo, String userInput){
  if(userInput == "")
    return "";
  if(unitElement.toLowerCase() == "temperature"){
    if(unitChoiceOne == 'celcius' && unitChoiceTwo == 'kelvin')
      return (double.parse(userInput) + 273.15).toString();
    else if(unitChoiceOne == 'kelvin' && unitChoiceTwo == 'celcius')
      return (double.parse(userInput) - 273.15).toString();
    else if(unitChoiceOne == 'celcius' && unitChoiceTwo == 'farenheit')
      return (1.8*double.parse(userInput)+32).toString();
    else if(unitChoiceOne == 'farenheit' && unitChoiceTwo == 'celcius')
      return ((double.parse(userInput)-32)/1.8).toString();
  }
  return '100';
}