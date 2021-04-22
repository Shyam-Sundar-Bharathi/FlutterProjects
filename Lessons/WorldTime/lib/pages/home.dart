import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:world_time/services/world_time.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Timer timer_primary;
  Timer timer_secondary;
  int counter = 0;
  Map data = {};
  WorldTime loadTime = WorldTime(location: 'Chennai', url: 'Asia/Kolkata', flag: 'india.png');

  @override
  void initState() {
    super.initState();
    timer_primary = Timer.periodic(Duration(seconds: 1), (Timer t) => addSecond());
    //timer_secondary = Timer.periodic(Duration(minutes: 1), (Timer t) => reloadTime());
  }

  void addSecond() {
    int i_second = int.parse(data['seconds']);
    //int i_hour = int.parse(data['hour']);
    int i_minute = int.parse(data['minute']);
    if (i_second >= 60) {
      i_second = 0;
      i_minute++;
    }
    if(i_minute >= 60){
      reloadTime();
    }

    i_second++;
    setState(() {
      if (i_second < 10)
        {data['seconds'] = "0$i_second";}
      else
        data['seconds'] = "$i_second";
      if (i_minute <10)
        {data['minute'] = "0$i_minute";}
      else
        {data['minute'] = "$i_minute";}
    });
  }

  void reloadTime() async {
    await loadTime.getTime();
    var array = loadTime.time.split(":");
    setState(() {
      data = {
        'location' : loadTime.location,
        'hour' : array[0],
        'minute' : array[1].substring(0,2),
        'AM/PM' : array[1].substring(2,),
        'isDaytime' : loadTime.isDaytime,
        'flag' : loadTime.flag,
        'seconds' : loadTime.seconds,
      };
    });
  }


  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty? data : ModalRoute.of(context).settings.arguments;
    //print("refresh....");

    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';

    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: data['isDaytime'] ? Colors.blue[600] : Colors.blue[900],
        title: Text(
          "SSB's WorldTime",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
                child: Text(
                    "Menu",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
            ),
            ListTile(
              onTap: () async {
                dynamic result = await Navigator.pushNamed(context,'/location');
                setState(() {
                  data = {
                    'location' : result['location'],
                    'hour' : result['hour'],
                    'minute' : result['minute'],
                    'AM/PM' : result['AM/PM'],
                    'isDaytime' : result['isDaytime'],
                    'flag' : result['flag'],
                    'url' : result['url'],
                    'seconds' : result['seconds'],
                  };
                  loadTime.url=data['url'];
                  loadTime.location=data['location'];
                  loadTime.flag=data['flag'];
                  loadTime.seconds= data['seconds'];
                });
                Navigator.pop(context);
              },
              title: Text(
                "Edit Location",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              tileColor: Colors.blue[800],
              leading: Icon(
                Icons.edit_location_sharp,
                color: Colors.white,
              ),
            ),
          ],

        )
      ),
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
              CircleAvatar(
                backgroundImage: AssetImage("assets/${data['flag']}"),
                radius: 40,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${data['hour']} : ${data['minute']}",
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "  ${data['AM/PM']}",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Text(
                "${data['seconds']}",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.grey[300],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

