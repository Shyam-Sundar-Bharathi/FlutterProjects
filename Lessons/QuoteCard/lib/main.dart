import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'QuoteList.dart';
import 'QuoteAdd.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
      routes: {
      '/' : (context) => QuoteList(),
        '/QuoteAdd' :(context) => QuoteAdd(),
      },
  ));
}



