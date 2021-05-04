import 'package:unit_converter/unit_converter.dart';
String convert(String unitElement, String unitChoiceOne, String unitChoiceTwo, String userInput){
  if(userInput == "")
    return "";
  if(unitElement.toLowerCase() == "temperature")
    return temperature(unitChoiceOne, unitChoiceTwo, userInput);

  else if(unitElement.toLowerCase() == 'length')
    return frommeter(tometer(unitChoiceOne, userInput), unitChoiceTwo);

  else if(unitElement.toLowerCase() == 'mass')
    return fromgram(togram(unitChoiceOne, userInput), unitChoiceTwo);
  return '100';
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
  else if (unitChoiceTwo == 'tonne')
    return (double.parse(ans1)/1000000).toString();
  else if (unitChoiceTwo == 'kilogram')
    return (double.parse(ans1)/1000).toString();
  else if (unitChoiceTwo == 'milligram')
    return (double.parse(ans1)*1000).toString();
  else if (unitChoiceTwo == 'pound')
    return (double.parse(ans1)/453.592).toString();
  else if (unitChoiceTwo == 'ounce')
    return (double.parse(ans1)/28.3495).toString();
}

String tometer(String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'meter')
    return userInput;
  else if (unitChoiceOne == 'centimeter')
    return (double.parse(userInput)/100).toString();
  else if (unitChoiceOne == 'kilometer')
    return (double.parse(userInput)*1000).toString();
  else if (unitChoiceOne == 'inch')
    return (double.parse(userInput)*0.0254).toString();
  else if (unitChoiceOne == 'mile')
    return (double.parse(userInput)*1609.34).toString();
  else if (unitChoiceOne == 'millimeter')
    return (double.parse(userInput)/1000).toString();
  else if (unitChoiceOne == 'feet')
    return (double.parse(userInput)*0.3048).toString();
}

String frommeter(String ans1, String unitChoiceTwo){
  if(unitChoiceTwo == 'meter')
    return ans1;
  else if (unitChoiceTwo == 'centimeter')
    return (double.parse(ans1)*100).toString();
  else if (unitChoiceTwo == 'kilometer')
    return (double.parse(ans1)/1000).toString();
  else if (unitChoiceTwo == 'inch')
    return (double.parse(ans1)/0.0254).toString();
  else if (unitChoiceTwo == 'mile')
    return (double.parse(ans1)/1609.34).toString();
  else if (unitChoiceTwo == 'millimeter')
    return (double.parse(ans1)*1000).toString();
  else if (unitChoiceTwo == 'feet')
    return (double.parse(ans1)/0.3048).toString();
}

String temperature (String unitChoiceOne, String unitChoiceTwo, String userInput){
  if(unitChoiceOne == 'celcius' && unitChoiceTwo == 'kelvin')
    return (double.parse(userInput) + 273.15).toString();
  else if(unitChoiceOne == 'kelvin' && unitChoiceTwo == 'celcius')
    return (double.parse(userInput) - 273.15).toString();
  else if(unitChoiceOne == 'celcius' && unitChoiceTwo == 'farenheit')
    return (1.8*double.parse(userInput)+32).toString();
  else if(unitChoiceOne == 'farenheit' && unitChoiceTwo == 'celcius')
    return ((double.parse(userInput)-32)/1.8).toString();
  else if (unitChoiceOne == 'farenheit' && unitChoiceTwo == 'kelvin')
    return (temperature('celcius','kelvin',temperature('farenheit', 'celcius', userInput)));
  else if (unitChoiceOne == 'kelvin' && unitChoiceTwo == 'farenheit')
    return (temperature('celcius','farenheit',temperature('kelvin', 'celcius', userInput)));
}