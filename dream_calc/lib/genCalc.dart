import 'package:flutter/material.dart';
import 'package:dream_calc/main.dart';

class genCalc extends StatefulWidget {
  @override
  _genCalcState createState() => _genCalcState();
}

class _genCalcState extends State<genCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Caculator",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "MENU",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/lcmhcf');
              },
              title: Text(
                "LCM GCD CALCULATOR",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Colors.blue[800],
              leading: Icon(
                Icons.calculate_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox( height: 10),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/centTend');
              },
              title: Text(
                "CENTRAL TENDENCIES CALCULATOR",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              tileColor: Colors.blue[800],
              leading: Icon(
                Icons.calculate_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
