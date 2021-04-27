import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class myDrawer extends StatefulWidget {
  @override
  _myDrawerState createState() => _myDrawerState();
}

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
          SizedBox( height: 10),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/area');
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
              Navigator.pushNamed(context, '/volume');
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
        ],
      ),
    );
  }
}
