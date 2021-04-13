import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:Home(),
  ));
int i=0;
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quora',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),),
        centerTitle: false,
        backgroundColor: Colors.red[800],
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  'Name: ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Shyam");
                },
                child: Text('PRESS'),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Sundar");
                },
                child: Text('PRESS'),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Bharathi");
                },
                child: Text('PRESS'),
              ),

            ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(++i);
        },
        child: Text("+",
        style: TextStyle(
            fontSize: 30.0
        ),),
        backgroundColor: Colors.red[800],
      ),
    ) ;
  }
}





