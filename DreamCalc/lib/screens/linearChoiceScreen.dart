import 'package:flutter/material.dart';
class linearChoice extends StatefulWidget {
  const linearChoice({Key key}) : super(key: key);

  @override
  _linearChoiceState createState() => _linearChoiceState();
}

class _linearChoiceState extends State<linearChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'LINEAR EQUATION',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "2 variables",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize:30
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                elevation: MaterialStateProperty.all(10),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/linearTwo');
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "3 variables",
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize:30
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                elevation: MaterialStateProperty.all(10),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/linearThree');
              },
            ),
          ],
        ),
      ),
    );
  }
}
