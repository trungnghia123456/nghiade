import 'package:flutter/material.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  Map data ={};

  @override
  Widget build(BuildContext context) {


    data =data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    String uriBackGround = data['isDayTime'] ? 'https://pijamasurf.com/wp-content/uploads/10.208.149.45/uploads/2014/06/Screen-Shot-2014-06-03-at-2.09.20-PM.png' : 'https://i.joecomp.com/img/troubleshooting/932/how-to-fix-windows-10-night-light-if-it-doesnt-work-properly_1.jpg';
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(uriBackGround),fit: BoxFit.fill),

        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(75, 180, 75, 0),
          child: SafeArea(

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(onPressed: () async{
                   dynamic result =await Navigator.pushNamed(context, '/location');
                   setState(() {
                     data={
                     'location' : result['location'],
                     'urlFlag' : result['urlFlag'],
                     'dateTime' : result['dateTime'],
                     'isDayTime' : result['isDayTime']};
                   });
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.edit_location,color: Colors.black,),
                          Text('Edit Location',style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue
                          ),),
                        ],

                      )),
                  const SizedBox(height: 20,),
                  Text(data['location'],style: const TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                  ),),
                  const SizedBox(height: 12,),
                  Text(data['dateTime'],style: const TextStyle(
                    fontSize: 40,
                    letterSpacing: 2,
                      color: Colors.purple

                  ),)
                ],
              )
          ),
        ),
      ),
    );
  }
}
