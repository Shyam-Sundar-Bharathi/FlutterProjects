extension Ex on double {
  String toStringAsFixedNoZero(int n) =>
      double.parse(this.toStringAsFixed(n)).toString();
}

String convert(String unitElement, String unitChoiceOne, String unitChoiceTwo, String userInput, int precision){
  if(userInput == "")
    return "";
  if(unitElement.toLowerCase() == "temperature")
    return temperature(unitChoiceOne, unitChoiceTwo, userInput);

  if(unitElement.toLowerCase() == 'length'){
    return(frommeter(tometer(unitChoiceOne, userInput), unitChoiceTwo, precision));
  }

  if(unitElement.toLowerCase() == 'mass')
    return fromgram(togram(unitChoiceOne, userInput), unitChoiceTwo, precision);

  if(unitElement.toLowerCase() == 'plane angle')
    return fromdegree(todegree(unitChoiceOne, userInput), unitChoiceTwo, precision);

  if(unitElement.toLowerCase() == 'speed')
    return frommps(tomps(unitChoiceOne, userInput), unitChoiceTwo, precision);

  if(unitElement.toLowerCase() == 'energy')
    return fromjoule(tojoule(unitChoiceOne, userInput), unitChoiceTwo, precision);

  if(unitElement.toLowerCase() == 'area')
    return fromsqmeter(tosqmeter(unitChoiceOne, userInput), unitChoiceTwo, precision);

  if(unitElement.toLowerCase() == 'volume')
    return fromcumeter(tocumeter(unitChoiceOne, userInput), unitChoiceTwo, precision);
  return '100';
}

String tocumeter(String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'cubic meter')
    return userInput;
  if(unitChoiceOne == 'liter')
    return (double.parse(userInput)/1000).toString();
  if(unitChoiceOne == 'cubic centimeter')
    return (double.parse(userInput)/1000000).toString();
  if(unitChoiceOne == 'milliliter')
    return (double.parse(userInput)/1000000).toString();
  if(unitChoiceOne == 'cubic foot')
    return (double.parse(userInput)*0.0283168).toString();
  if(unitChoiceOne == 'cubic inch')
    return (double.parse(userInput)/61024).toString();
}

String fromcumeter(String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'cubic meter')
    return ans1;
  if(unitChoiceTwo == 'liter')
    return (double.parse(ans1)*1000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'cubic centimeter')
    return (double.parse(ans1)*1000000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'milliliter')
    return (double.parse(ans1)*1000000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'cubic foot')
    return (double.parse(ans1)/0.0283168).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'cubic inch')
    return (double.parse(ans1)*61024).toStringAsFixed(precision);
}

String tosqmeter(String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'sq. meter')
    return userInput;
  if(unitChoiceOne == 'sq. foot')
    return (double.parse(userInput)/10.764).toString();
  if(unitChoiceOne == 'sq. kilometer')
    return (double.parse(userInput)*1000000).toString();
  if(unitChoiceOne == 'sq. centimeter')
    return (double.parse(userInput)/10000).toString();
  if(unitChoiceOne == 'sq. mile')
    return (double.parse(userInput)*2590000).toString();
  if(unitChoiceOne == 'sq. inch')
    return (double.parse(userInput)*0.00064516).toString();
  if(unitChoiceOne == 'acre')
    return (double.parse(userInput)*4046.86).toString();
  if(unitChoiceOne == 'hectare')
    return (double.parse(userInput)*10000).toString();
}

String fromsqmeter(String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'sq. meter')
    return ans1;
  if(unitChoiceTwo == 'sq. foot')
    return (double.parse(ans1)*10.764).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'sq. kilometer')
    return (double.parse(ans1)/1000000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'sq. centimeter')
    return (double.parse(ans1)*10000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'sq. mile')
    return (double.parse(ans1)/2590000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'sq. inch')
    return (double.parse(ans1)/0.00064516).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'acre')
    return (double.parse(ans1)/4046.86).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'hectare')
    return (double.parse(ans1)/10000).toStringAsFixedNoZero(precision);
}

String tojoule(String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'joule')
    return userInput;
  if(unitChoiceOne == 'calorie')
    return (double.parse(userInput)*4.184).toString();
  if(unitChoiceOne == 'kilojoule')
    return (double.parse(userInput)*1000).toString();
  if(unitChoiceOne == 'kilocalorie')
    return (double.parse(userInput)*4184).toString();
  if(unitChoiceOne == 'watt hour')
    return (double.parse(userInput)*3600).toString();
  if(unitChoiceOne == 'kilowatt hour')
    return (double.parse(userInput)*3600000).toString();
}

String fromjoule(String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'joule')
    return ans1;
  if(unitChoiceTwo == 'calorie')
    return (double.parse(ans1)/4.184).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'kilojoule')
    return (double.parse(ans1)/1000).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'kilocalorie')
    return (double.parse(ans1)/4184).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'watt hour')
    return (double.parse(ans1)/3600).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'kilowatt hour')
    return (double.parse(ans1)/3600000).toStringAsFixedNoZero(precision);
}

String tomps (String unitChoiceOne, String userInput){
  if(unitChoiceOne == 'meter per second')
    return userInput;
  if(unitChoiceOne == 'kilometer per hour')
    return (double.parse(userInput)/3.6).toString();
  if(unitChoiceOne == 'mile per hour')
    return (double.parse(userInput)/2.237).toString();
  if(unitChoiceOne == 'foot per second')
    return (double.parse(userInput)*0.3048).toString();
}

String frommps (String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'meter per second')
    return ans1;
  if(unitChoiceTwo == 'kilometer per hour')
    return (double.parse(ans1)*3.6).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'mile per hour')
    return (double.parse(ans1)*2.237).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'foot per second')
    return (double.parse(ans1)/0.3048).toStringAsFixedNoZero(precision);
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

String fromdegree (String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'degree')
    return ans1;
  if(unitChoiceTwo == 'radian')
    return (double.parse(ans1)/57.295779513).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'gradian')
    return (double.parse(ans1)/0.9).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'minute')
    return (double.parse(ans1)*60).toStringAsFixedNoZero(precision);
  if(unitChoiceTwo == 'second')
    return (double.parse(ans1)*3600).toStringAsFixedNoZero(precision);
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

String fromgram (String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'gram')
    return ans1;
  if (unitChoiceTwo == 'tonne')
    return (double.parse(ans1)/1000000).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'kilogram')
    return (double.parse(ans1)/1000).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'milligram')
    return (double.parse(ans1)*1000).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'pound')
    return (double.parse(ans1)/453.592).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'ounce')
    return (double.parse(ans1)/28.3495).toStringAsFixedNoZero(precision);
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

String frommeter(String ans1, String unitChoiceTwo, int precision){
  if(unitChoiceTwo == 'meter')
    return ans1;
  if (unitChoiceTwo == 'centimeter')
    return (double.parse(ans1)*100).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'kilometer')
    return (double.parse(ans1)/1000).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'inch')
    return (double.parse(ans1)/0.0254).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'mile')
    return (double.parse(ans1)/1609.34).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'millimeter')
    return (double.parse(ans1)*1000).toStringAsFixedNoZero(precision);
  if (unitChoiceTwo == 'feet')
    return (double.parse(ans1)/0.3048).toStringAsFixedNoZero(precision);
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