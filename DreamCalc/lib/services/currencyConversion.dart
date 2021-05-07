
import 'package:forex/forex.dart';


String exp = '';

Future<double> getExchangeRate(String from, String to) async {
  print('Getting exhange rate');

  Map<String, num> quotes = await Forex.fx(
      quoteProvider: QuoteProvider.yahoo,
      base: from,
      quotes: <String>['USD', 'INR','BDT','JPY','EUR','AED','SGD','AUD','GBP','CAD','HKD','BHD']);

  print('Received exhange rate');
  exp = from + to;
  print(quotes[exp]);
  return quotes[exp];

}