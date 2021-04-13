import 'package:flutter/material.dart';

class lcm_hcf_calc extends StatefulWidget {
  @override
  _lcm_hcf_calcState createState() => _lcm_hcf_calcState();
}

class _lcm_hcf_calcState extends State<lcm_hcf_calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'LCM HCF Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
