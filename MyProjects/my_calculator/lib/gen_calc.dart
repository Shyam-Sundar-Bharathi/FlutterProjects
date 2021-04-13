import 'package:flutter/material.dart';

class gen_calc extends StatefulWidget {
  @override
  _gen_calcState createState() => _gen_calcState();
}

class _gen_calcState extends State<gen_calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          'General Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: null,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                  'Menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white,
                ),

              ),
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text("-> Polynomial",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
              ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/poly');
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text('-> LCM HCF',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
              ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/lcmhcf');
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text('-> Central Tendencies',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/cent_tend');
              },
            ),
          ],
        ),
      ),
    );
  }
}
