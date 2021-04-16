import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'quote_card.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes_display =[
    Quote(text: 'If you stand on a passing cloud, you will fall',author: 'Sriram M'),
    Quote(text: 'Work should be pleasure not, pressure',author: 'Sriram M'),
    Quote(text:'Trust the process, do not focus on the result',author: 'Sriram M'),
    Quote(text: 'Money should be a bi-product of chasing your dreams, it should not be your dream',author: 'Sriram M'),
    Quote(text: 'You can learn it now or when it is late',author: 'Shyam Sundar Bharathi'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 0.0),
              child: Column(
                children: quotes_display.map((quote) =>
                    QuoteCard(
                        quote: quote,
                        delete: () {
                          setState(() {
                            quotes_display.remove(quote);
                          });
                        }
                    )).toList(),

              ),
            );
          }
      ),
            floatingActionButton: FloatingActionButton(
            child: Icon(
            Icons.add,
            size: 30.0,
            semanticLabel: 'add quote',
            ),
            onPressed: () async {
                dynamic quote = await Navigator.pushNamed(context, '/QuoteAdd');
                setState(() {
                  quotes_display.add(quote);
                });

                print(quotes_display);

            },
    )
    );
  }
}