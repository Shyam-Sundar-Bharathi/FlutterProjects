import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Chennai', url: 'Asia/Kolkata', flag: 'india.png');
    await instance.getTime();
    var array = instance.time.split(":");
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'url' : instance.url,
         'location' : instance.location,
        'flag' : instance.flag,
        'hour' : array[0],
        'minute' : array[1].substring(0,2),
        'AM/PM' : array[1].substring(2,),
        'isDaytime' : instance.isDaytime == null? true : instance.isDaytime,
        'seconds' : instance.seconds,
      });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOADING',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,

              ),
            ),
            SizedBox(height: 10.0,),
            SpinKitPouringHourglass(
              color: Colors.red,
              size: 60.0,
            )
          ],
        ),
      ),
    );
  }
}
