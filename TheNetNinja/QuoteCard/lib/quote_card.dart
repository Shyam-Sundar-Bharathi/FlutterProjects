import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[300],
      margin: EdgeInsets.all(9.0),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0, width: 10.0,),
            Text(
              '- ${quote.author}',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[900]
              ),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: delete,
              label: Text('Remove',
              style: TextStyle(
                color: Colors.white,
              ),),
                icon: Icon(Icons.delete,
                color: Colors.white,),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

