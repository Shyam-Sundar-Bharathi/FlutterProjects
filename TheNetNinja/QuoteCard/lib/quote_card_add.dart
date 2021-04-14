import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCardAdd extends StatelessWidget {
  final Quote quote;
  final Function add;
  QuoteCardAdd({this.quote,this.add});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[100],
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
            SizedBox(height: 10.0),
            TextButton.icon(
              onPressed: add,
              label: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                ),),
              icon: Icon(Icons.add_circle_sharp,
                color: Colors.white,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}