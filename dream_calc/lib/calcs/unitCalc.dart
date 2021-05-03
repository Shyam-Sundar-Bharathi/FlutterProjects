import 'package:unit_converter/unit_converter.dart';
String convert(String unitElement, String unitChoiceOne, String unitChoiceTwo, String userInput){
  if(userInput == "")
    return "";
  return (double.parse(userInput)*100).toString();
}