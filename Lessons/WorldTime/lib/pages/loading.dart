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
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'url' : instance.url,
         'location' : instance.location,
        'flag' : instance.flag,
        'time' : instance.time,
        'isDaytime' : instance.isDaytime == null? true : instance.isDaytime,
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
            SpinKitPumpingHeart(
              color: Colors.red,
              size: 60.0,
            )
          ],
        ),
      ),
    );
  }
}
