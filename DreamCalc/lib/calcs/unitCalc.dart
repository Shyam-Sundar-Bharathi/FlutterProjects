import 'package:dream_calc/services/formatNumber.dart';

String convert(String unitElement, String unitChoiceOne, String unitChoiceTwo, String userInput, int precision){
  if(userInput == "")
    return "0";
  double input = 0;
  input = double.parse(userInput);
  if(unitElement.toLowerCase() == "temperature")
    return temperature(unitChoiceOne, unitChoiceTwo, userInput);

  if(unitElement.toLowerCase() == 'length'){
    return (frommeter(tometer(unitChoiceOne, input), unitChoiceTwo, precision)).toStringAsFixedNoZero(precision);
  }

  if(unitElement.toLowerCase() == 'mass')
    return fromgram(togram(unitChoiceOne, input), unitChoiceTwo, precision).toStringAsFixedNoZero(precision);

  if(unitElement.toLowerCase() == 'plane angle')
    return fromdegree(todegree(unitChoiceOne, input), unitChoiceTwo, precision).toStringAsFixedNoZero(precision);

  if(unitElement.toLowerCase() == 'speed')
    return frommps(tomps(unitChoiceOne, input), unitChoiceTwo, precision).toStringAsFixedNoZero(precision);

  if(unitElement.toLowerCase() == 'energy')
    return fromjoule(tojoule(unitChoiceOne, input), unitChoiceTwo, precision).toStringAsFixedNoZero(precision);

  if(unitElement.toLowerCase() == 'area')
    return fromsqmeter(tosqmeter(unitChoiceOne, input), unitChoiceTwo, precision).toStringAsFixedNoZero(precision);

  if(unitElement.toLowerCase() == 'volume')
    return fromcumeter(tocumeter(unitChoiceOne, input), unitChoiceTwo, precision).toStringAsFixedNoZero(precision);
}

double tocumeter(String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'cubic meter')
    return userInput;
  if(unitChoiceOne == 'liter')
    return userInput/1000;
  if(unitChoiceOne == 'cubic centimeter')
    return userInput/1000000;
  if(unitChoiceOne == 'milliliter')
    return userInput/1000000;
  if(unitChoiceOne == 'cubic foot')
    return userInput*0.0283168;
  if(unitChoiceOne == 'cubic inch')
    return userInput/61024;
}

double fromcumeter(double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'cubic meter')
    return ans1;
  if(unitChoiceTwo == 'liter')
    return ans1*1000;
  if(unitChoiceTwo == 'cubic centimeter')
    return ans1*1000000;
  if(unitChoiceTwo == 'milliliter')
    return ans1*1000000;
  if(unitChoiceTwo == 'cubic foot')
    return ans1/0.0283168;
  if(unitChoiceTwo == 'cubic inch')
    return ans1*61024;
}

double tosqmeter(String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'sq. meter')
    return userInput;
  if(unitChoiceOne == 'sq. foot')
    return userInput/10.764;
  if(unitChoiceOne == 'sq. kilometer')
    return userInput*1000000;
  if(unitChoiceOne == 'sq. centimeter')
    return userInput/10000;
  if(unitChoiceOne == 'sq. mile')
    return userInput*2590000;
  if(unitChoiceOne == 'sq. inch')
    return userInput*0.00064516;
  if(unitChoiceOne == 'acre')
    return userInput*4046.86;
  if(unitChoiceOne == 'hectare')
    return userInput*10000;
}

double fromsqmeter(double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'sq. meter')
    return ans1;
  if(unitChoiceTwo == 'sq. foot')
    return ans1*10.764;
  if(unitChoiceTwo == 'sq. kilometer')
    return ans1/1000000;
  if(unitChoiceTwo == 'sq. centimeter')
    return ans1*10000;
  if(unitChoiceTwo == 'sq. mile')
    return ans1/2590000;
  if(unitChoiceTwo == 'sq. inch')
    return ans1/0.00064516;
  if(unitChoiceTwo == 'acre')
    return ans1/4046.86;
  if(unitChoiceTwo == 'hectare')
    return ans1/10000;
}

double tojoule(String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'joule')
    return userInput;
  if(unitChoiceOne == 'calorie')
    return userInput*4.184;
  if(unitChoiceOne == 'kilojoule')
    return userInput*1000;
  if(unitChoiceOne == 'kilocalorie')
    return userInput*4184;
  if(unitChoiceOne == 'watt hour')
    return userInput*3600;
  if(unitChoiceOne == 'kilowatt hour')
    return userInput*3600000;
}

double fromjoule(double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'joule')
    return ans1;
  if(unitChoiceTwo == 'calorie')
    return ans1/4.184;
  if(unitChoiceTwo == 'kilojoule')
    return ans1/1000;
  if(unitChoiceTwo == 'kilocalorie')
    return ans1/4184;
  if(unitChoiceTwo == 'watt hour')
    return ans1/3600;
  if(unitChoiceTwo == 'kilowatt hour')
    return ans1/3600000;
}

double tomps (String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'meter per second')
    return userInput;
  if(unitChoiceOne == 'kilometer per hour')
    return userInput/3.6;
  if(unitChoiceOne == 'mile per hour')
    return userInput/2.237;
  if(unitChoiceOne == 'foot per second')
    return userInput*0.3048;
}

double frommps (double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'meter per second')
    return ans1;
  if(unitChoiceTwo == 'kilometer per hour')
    return ans1*3.6;
  if(unitChoiceTwo == 'mile per hour')
    return ans1*2.237;
  if(unitChoiceTwo == 'foot per second')
    return ans1/0.3048;
}

double todegree(String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'degree')
    return userInput;
  if(unitChoiceOne == 'radian')
    return userInput*57.295779513;
  if(unitChoiceOne == 'gradian')
    return userInput*0.9;
  if(unitChoiceOne == 'minute')
    return userInput/60;
  if(unitChoiceOne == 'second')
    return userInput/3600;
}

double fromdegree (double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'degree')
    return ans1;
  if(unitChoiceTwo == 'radian')
    return ans1/57.295779513;
  if(unitChoiceTwo == 'gradian')
    return ans1/0.9;
  if(unitChoiceTwo == 'minute')
    return ans1*60;
  if(unitChoiceTwo == 'second')
    return ans1*3600;
}

double togram (String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'gram')
    return userInput;
  if (unitChoiceOne == 'tonne')
    return userInput*1000000;
  if (unitChoiceOne == 'kilogram')
    return userInput*1000;
  if (unitChoiceOne == 'milligram')
    return userInput/1000;
  if (unitChoiceOne == 'pound')
    return userInput*453.592;
  if (unitChoiceOne == 'ounce')
    return userInput*28.3495;
}

double fromgram (double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'gram')
    return ans1;
  if (unitChoiceTwo == 'tonne')
    return ans1/1000000;
  if (unitChoiceTwo == 'kilogram')
    return ans1/1000;
  if (unitChoiceTwo == 'milligram')
    return ans1*1000;
  if (unitChoiceTwo == 'pound')
    return ans1/453.592;
  if (unitChoiceTwo == 'ounce')
    return ans1/28.3495;
}

double tometer(String unitChoiceOne, double userInput){
  if(unitChoiceOne == 'meter')
    return userInput;
  if (unitChoiceOne == 'centimeter')
    return userInput/100;
  if (unitChoiceOne == 'kilometer')
    return userInput*100;
  if (unitChoiceOne == 'inch')
    return userInput*0.0254;
  if (unitChoiceOne == 'mile')
    return userInput*1609.34;
  if (unitChoiceOne == 'millimeter')
    return userInput/1000;
  if (unitChoiceOne == 'feet')
    return userInput*0.3048;
}

double frommeter(double ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'meter')
    return ans1;
  if (unitChoiceTwo == 'centimeter')
    return (ans1)*100;
  if (unitChoiceTwo == 'kilometer')
    return ans1/1000;
  if (unitChoiceTwo == 'inch')
    return ans1/0.0254;
  if (unitChoiceTwo == 'mile')
    return ans1/1609.34;
  if (unitChoiceTwo == 'millimeter')
    return ans1*1000;
  if (unitChoiceTwo == 'feet')
    return ans1/0.3048;
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