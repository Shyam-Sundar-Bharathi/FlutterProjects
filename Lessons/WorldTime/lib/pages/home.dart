import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:world_time/services/world_time.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Timer timer;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 10), (Timer t) => reloadTime());
  }

  Map data = {};
  WorldTime loadTime = WorldTime(location: 'Chennai', url: 'Asia/Kolkata', flag: 'india.png');

  void reloadTime() async {

    //WorldTime loadTime = data.isEmpty ? WorldTime(location: 'Chennai', url: 'Asia/Kolkata', flag: 'india.png') : WorldTime(location: data['location'],url: data['url'],flag: data['flag']);
  print(loadTime.url);
    await loadTime.getTime();
    setState(() {
      data = {
        'location' : loadTime.location,
        'time' : loadTime.time,
        'isDaytime' : loadTime.isDaytime,
        'flag' : loadTime.flag
      };
    });
  }


  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty? data : ModalRoute.of(context).settings.arguments;
    print(data);

    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';

    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$bgImage"),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,100.0,0,0),
          child: Column(
            children: [
              TextButton.icon(
                icon: Icon(
                    Icons.edit_location_sharp,
                  color: Colors.white,
                ),
                label: Text(
                    'Edit location',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context,'/location');
                 setState(() {
                   data = {
                     'location' : result['location'],
                     'time' : result['time'],
                     'isDaytime' : result['isDaytime'],
                     'flag' : result['flag']
                   };
                   /*loadTime.url=data['url'];
                   loadTime.location=data['location'];
                   loadTime.flag=data['flag'];*/
                 });
                },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blue[900]) ,
            ),
              ),
              SizedBox(height: 80.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

