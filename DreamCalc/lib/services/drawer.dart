import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dream_calc/services/currencyConversion.dart';
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
            padding: EdgeInsets.fromLTRB(0,10,0,0),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                ListTile(
                  onTap: () async {
                    result = await Navigator.pushNamed(context, '/settings');
                    setState(() {
                      precision = result['precision'];
                    });
                  },
                  title: Text(
                    "SETTINGS",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  ),
                SizedBox(height: 10,),
                ListTile(
                  onTap: (){},
                  title: Text(
                    "USAGE TIPS",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ],
            )
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
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
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
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
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
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
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
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
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
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
            ),
          ),
          SizedBox( height: 10),
          ListTile(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/unitConversion',arguments: {
                'precision' : precision,
              });
            },
            title: Text(
              'UNIT CONVERSION',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/percentage',arguments: {
                'precision' : precision,
              });
            },
            title: Text(
              'PERCENTAGE',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.calculate_rounded,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/currency');
            },
            title: Text(
              'CURRENCY CONVERSION',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            tileColor: Colors.white12,
            leading: Icon(
              Icons.attach_money_sharp,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
