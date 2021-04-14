import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netninja_project/quote_card_add.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'QuoteList.dart';

class QuoteAdd extends StatefulWidget {
  @override
  _QuoteAddState createState() => _QuoteAddState();
}

class _QuoteAddState extends State<QuoteAdd> {

  List<Quote> quotes_add =[
    Quote(text: 'You live by your morals, I will live by mine', author: 'Brindha Sriram'),
    Quote(text: 'You can not ask your parents for independence for as long as you depend on your parents for food and shelter',author: 'Shyam Sundar Bharathi'),
    Quote(text: 'I think. Therefore, I am', author: 'Young Sheldon'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text(
          'Choose quote to add',
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 0.0),
              child: Column(
                children: quotes_add.map((quote) =>
                    QuoteCardAdd(
                        quote: quote,
                        add: () {
                          Navigator.pushReplacementNamed(context, '/',arguments: {
                            quote,
                          });
                          quotes_add.remove(quote);
                        }
                    )).toList(),

              ),
            );

          }
      ),
    );
  }
}
