import 'package:flutter/material.dart';

class central_tendencies extends StatefulWidget {
  @override
  _central_tendenciesState createState() => _central_tendenciesState();
}

class _central_tendenciesState extends State<central_tendencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'Central Tendencies',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
