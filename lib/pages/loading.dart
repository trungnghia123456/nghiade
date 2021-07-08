
import 'package:flutter/material.dart';
import 'package:world_time_project/worldTime_class/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {


  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time ='loading time...';

  void getTimeZoneData() async{
    WorldTime instance = WorldTime(location: "vietnam-HoChiMinh city", urlFlag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/2560px-Flag_of_Vietnam.svg.png', locationApi: 'Asia/Ho_Chi_Minh');
    await instance.getData();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location' : instance.location,
      'urlFlag' : instance.urlFlag,
      'dateTime' : instance.time,
      'isDayTime' : instance.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    getTimeZoneData();
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(

          child: SpinKitFoldingCube(
            color: Colors.white,
            size: 50.0,
          ),
      ),

    );
  }
}
