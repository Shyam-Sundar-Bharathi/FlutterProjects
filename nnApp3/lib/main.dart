import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(text: 'If you stand on a passing cloud, you will fall',author: 'Sriram M'),
    Quote(text: 'Work should be pleasure not, pressure',author: 'Sriram M'),
    Quote(text:'Trust the process, do not focus on the result',author: 'Sriram M'),
    Quote(text: 'Money should be a bi-product of chasing your dreams',author: 'Sriram M'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList()
      ),
    );
  }
}

