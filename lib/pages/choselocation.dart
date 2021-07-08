import 'package:flutter/material.dart';
import 'package:world_time_project/worldTime_class/worldtime.dart';

class Location extends StatefulWidget {

  @override
  _LocationState createState() => _LocationState();
}


class _LocationState extends State<Location> {

  @override
  void initState() {
    print('run 1st');
    super.initState();
  }

  List<WorldTime> locations = [
  WorldTime(location: "HoChiMinh city", urlFlag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/2560px-Flag_of_Vietnam.svg.png', locationApi: 'Asia/Ho_Chi_Minh'),
  WorldTime(location: "HaNoi city",urlFlag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/2560px-Flag_of_Vietnam.svg.png' , locationApi: 'Asia/Ha_Noi'),
  WorldTime(location: "Abidjan city", urlFlag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg/2560px-Flag_of_C%C3%B4te_d%27Ivoire.svg.png', locationApi: 'Africa/Abidjan'),
  WorldTime(location: "Accra-city", urlFlag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg/2560px-Flag_of_C%C3%B4te_d%27Ivoire.svg.png', locationApi: 'Africa/Accra'),
  WorldTime(location: "Bahia-city", urlFlag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Bandeira_da_Bahia.svg/1500px-Bandeira_da_Bahia.svg.png', locationApi: 'America/Bahia'),
  WorldTime(location: "Canpo-Grande city", urlFlag: 'https://besthqwallpapers.com/Uploads/29-10-2019/109560/thumb2-flag-of-campo-grande-4k-stone-background-brazilian-city-grunge-flag.jpg', locationApi: 'America/Campo_Grande'),
  ];

  void updateTime(index) async{
    WorldTime temp = locations[index];
    await temp.getData();
    // navigate to home screen
    print(temp.time);
    Navigator.pop(context,{
      'location' : temp.location,
      'urlFlag' :  temp.urlFlag,
      'dateTime' :  temp.time,
      'isDayTime' :  temp.isDayTime
    });
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Location'),
        elevation: 10,
        centerTitle: true,
      ),
      body: ListView.builder(
            itemCount: locations.length,
           itemBuilder: (context,index){
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: ListTile(
                    title: Text(locations[index].location),
                    onTap: (){updateTime(index);},
                    leading: CircleAvatar(backgroundImage: NetworkImage(locations[index].urlFlag),),
                  ),
                ),
              );
           }),
      );
    
  }
}

