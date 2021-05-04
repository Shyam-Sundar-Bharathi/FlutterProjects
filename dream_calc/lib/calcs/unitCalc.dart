import 'package:flutter/rendering.dart';
import 'package:unit_converter/unit_converter.dart';
String convert(String unitElement, String unitChoiceOne, String unitChoiceTwo, String userInput){
  if(userInput == "")
    return "";
  if(unitElement.toLowerCase() == "temperature")
    return temperature(unitChoiceOne, unitChoiceTwo, userInput);

  if(unitElement.toLowerCase() == 'length')
    return frommeter(tometer(unitChoiceOne, userInput), unitChoiceTwo);

  if(unitElement.toLowerCase() == 'mass')
    return fromgram(togram(unitChoiceOne, userInput), unitChoiceTwo);

  if(unitElement.toLowerCase() == 'plane angle')
    return fromdegree(todegree(unitChoiceOne, userInput), unitChoiceTwo);
  return '100';
}

String todegree(String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'degree')
    return userInput;
  if(unitChoiceOne == 'radian')
    return (double.parse(userInput)*57.295779513).toString();
  if(unitChoiceOne == 'gradian')
    return (double.parse(userInput)*0.9).toString();
  if(unitChoiceOne == 'minute')
    return (double.parse(userInput)/60).toString();
  if(unitChoiceOne == 'second')
    return (double.parse(userInput)/3600).toString();
}

String fromdegree (String ans1, String unitChoiceTwo){
  if(unitChoiceTwo == 'degree')
    return ans1;
  if(unitChoiceTwo == 'radian')
    return (double.parse(ans1)/57.295779513).toString();
  if(unitChoiceTwo == 'gradian')
    return (double.parse(ans1)/0.9).toString();
  if(unitChoiceTwo == 'minute')
    return (double.parse(ans1)*60).toString();
  if(unitChoiceTwo == 'second')
    return (double.parse(ans1)*3600).toString();
}

String togram (String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'gram')
    return userInput;
  if (unitChoiceOne == 'tonne')
    return (double.parse(userInput)*1000000).toString();
  if (unitChoiceOne == 'kilogram')
    return (double.parse(userInput)*1000).toString();
  if (unitChoiceOne == 'milligram')
    return (double.parse(userInput)/1000).toString();
  if (unitChoiceOne == 'pound')
    return (double.parse(userInput)*453.592).toString();
  if (unitChoiceOne == 'ounce')
    return (double.parse(userInput)*28.3495).toString();
}

String fromgram (String ans1, String unitChoiceTwo){
  if(unitChoiceTwo == 'gram')
    return ans1;
  if (unitChoiceTwo == 'tonne')
    return (double.parse(ans1)/1000000).toString();
  if (unitChoiceTwo == 'kilogram')
    return (double.parse(ans1)/1000).toString();
  if (unitChoiceTwo == 'milligram')
    return (double.parse(ans1)*1000).toString();
  if (unitChoiceTwo == 'pound')
    return (double.parse(ans1)/453.592).toString();
  if (unitChoiceTwo == 'ounce')
    return (double.parse(ans1)/28.3495).toString();
}

String tometer(String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'meter')
    return userInput;
  if (unitChoiceOne == 'centimeter')
    return (double.parse(userInput)/100).toString();
  if (unitChoiceOne == 'kilometer')
    return (double.parse(userInput)*1000).toString();
  if (unitChoiceOne == 'inch')
    return (double.parse(userInput)*0.0254).toString();
  if (unitChoiceOne == 'mile')
    return (double.parse(userInput)*1609.34).toString();
  if (unitChoiceOne == 'millimeter')
    return (double.parse(userInput)/1000).toString();
  if (unitChoiceOne == 'feet')
    return (double.parse(userInput)*0.3048).toString();
}

String frommeter(String ans1, String unitChoiceTwo){
  if(unitChoiceTwo == 'meter')
    return ans1;
  if (unitChoiceTwo == 'centimeter')
    return (double.parse(ans1)*100).toString();
  if (unitChoiceTwo == 'kilometer')
    return (double.parse(ans1)/1000).toString();
  if (unitChoiceTwo == 'inch')
    return (double.parse(ans1)/0.0254).toString();
  if (unitChoiceTwo == 'mile')
    return (double.parse(ans1)/1609.34).toString();
  if (unitChoiceTwo == 'millimeter')
    return (double.parse(ans1)*1000).toString();
  if (unitChoiceTwo == 'feet')
    return (double.parse(ans1)/0.3048).toString();
}

String temperature (String unitChoiceOne, String unitChoiceTwo, String userInput){
  if(unitChoiceOne == 'celcius' && unitChoiceTwo == 'kelvin')
    return (double.parse(userInput) + 273.15).toString();
  if(unitChoiceOne == 'kelvin' && unitChoiceTwo == 'celcius')
    return (double.parse(userInput) - 273.15).toString();
  if(unitChoiceOne == 'celcius' && unitChoiceTwo == 'farenheit')
    return (1.8*double.parse(userInput)+32).toString();
  if(unitChoiceOne == 'farenheit' && unitChoiceTwo == 'celcius')
    return ((double.parse(userInput)-32)/1.8).toString();
  if (unitChoiceOne == 'farenheit' && unitChoiceTwo == 'kelvin')
    return (temperature('celcius','kelvin',temperature('farenheit', 'celcius', userInput)));
  if (unitChoiceOne == 'kelvin' && unitChoiceTwo == 'farenheit')
    return (temperature('celcius','farenheit',temperature('kelvin', 'celcius', userInput)));
}