import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
 late String location;
 late String urlFlag;
 late String time;
 late String locationApi;
 late bool isDayTime;
  WorldTime({required this.location,required this.urlFlag,required this.locationApi});

  Future<void> getData() async{
    try{
      Response response = await get(Uri.parse( 'http://worldtimeapi.org/api/timezone/$locationApi'));
      Map data = json.decode(response.body);
      //print(data);

      //get data String
      String dateTime = data['datetime'];
      String offSet = data['utc_offset'].toString().substring(1,3);
      // print(dateTime);

      //create datetime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offSet)));
      
      //set time
      isDayTime = now.hour>6 && now.hour < 17 ? true : false;
      time = DateFormat.jm().format(now);
    }catch(e){
      print(e);
      time = 'get the time fail';

    }


  }


}
