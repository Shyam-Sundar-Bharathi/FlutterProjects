import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;

  WorldTime({this.location,this.url,this.flag});

  Future<void> getTime() async {
    try{
    //var url = Uri.parse("https://worldtimeapi.org/api/timezone/$url");
    Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);
    String datetime = data['utc_datetime'];
    String offset_sign = data['utc_offset'].substring(0,1);
    String offset_hours = data['utc_offset'].substring(1,3);
    String offset_minutes = data['utc_offset'].substring(4,);
    DateTime now = DateTime.parse(datetime);
    if(offset_sign=='+')
      {
        now = now.add(Duration(hours: int.parse(offset_hours),minutes: int.parse(offset_minutes)));
      }
    else if(offset_sign=="-")
      {
        now = now.subtract(Duration(hours: int.parse(offset_hours),minutes: int.parse(offset_minutes)));
      }
    print(now.hour);
    try { isDaytime = now.hour > 6 && now.hour < 19 ? true : false ; }
    catch (e) { isDaytime = true; }
    time = DateFormat.jm().format(now);
  }
    catch(e) {
      print("error = $e");
      time = "Could not fetch data. Try again! ";
    }
  }

}