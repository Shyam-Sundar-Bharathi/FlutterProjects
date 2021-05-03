import 'package:flutter/material.dart';
class myDrawer extends StatefulWidget {
  @override
  _myDrawerState createState() => _myDrawerState();
}

int precision = 8;
dynamic result;
class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.pushReplacementNamed(context, '/', arguments: {
                'precision' : precision,
              });
            },
            title: Text(
              "GENERAL CALCULATOR",
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
              Navigator.pushReplacementNamed(context, '/lcmhcf', arguments: {
                'precision' : precision,
              });
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
              Navigator.pushReplacementNamed(context, '/centTend',arguments: {
                'precision' : precision,
              });
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
          SizedBox( height: 10),
          ListTile(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/area', arguments: {
                'precision' : precision,
              });
            },
            title: Text(
              "AREA OF 2D SHAPES",
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
              Navigator.pushReplacementNamed(context, '/volume', arguments: {
                'precision' : precision,
              });
            },
            title: Text(
              "VOLUME OF 3D SHAPES",
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
              Navigator.pushReplacementNamed(context, '/unitConversion');
            },
            title: Text(
              'UNIT CONVERSION',
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
          SizedBox(height: 10),
          ListTile(
            onTap: () async {
              result = await Navigator.pushNamed(context, '/settings');
              setState(() {
                precision = result['precision'];
              });
              print(precision);
            },
            title: Text(
              "SETTINGS",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            tileColor: Colors.blue[800],
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
