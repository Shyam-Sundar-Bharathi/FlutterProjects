
import 'package:forex/forex.dart';


String exp = '';

Future<double> getExchangeRate(String from, String to) async {

  Map<String, num> quotes = await Forex.fx(
      quoteProvider: QuoteProvider.yahoo,
      base: from,
      quotes: <String>['USD', 'JPY','INR','EUR']);

  exp = from + to;
  print(quotes[exp]);
  return quotes[exp];

// on Exception{
//   Map<String, num> quotes = await Forex.fx(
//       quoteProvider: QuoteProvider.yahoo,
//       base: to,
//       quotes: <String>['EUR', 'JPY','INR']);
//
//   exp = to + from;
//   print('${quotes[exp]} + except');
//   return 1/(quotes[exp]).toDouble();
// }
}