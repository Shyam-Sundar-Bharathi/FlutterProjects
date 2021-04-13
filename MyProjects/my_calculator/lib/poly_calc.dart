import 'package:flutter/material.dart';

class poly_calc extends StatefulWidget {
  @override
  _poly_calcState createState() => _poly_calcState();
}

class _poly_calcState extends State<poly_calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'Polynomial Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
