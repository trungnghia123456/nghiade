import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int clickTime=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('profile'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 10.0,
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(backgroundImage: NetworkImage('https://stellahome.vn/wp-content/uploads/2019/05/stellahome-stellainterior-deactive-pikachu.jpg'
            ),radius: 86.0),
          )
          ,Text('NAME',style: TextStyle(fontSize: 20.0,color: Colors.grey[500],letterSpacing: 2.0),)
          ,Text('Nguyễn Trung Nghĩa',style: TextStyle(fontSize: 20.0,color: Colors.yellowAccent),)
          ,SizedBox(height: 15.0,)
          ,Text('AGE',style: TextStyle(fontSize:20.0,color: Colors.grey[500],letterSpacing: 2.0),)
          ,Text('21',style: TextStyle(fontSize: 20.0,color: Colors.yellowAccent),)
          ,SizedBox(height: 15.0,)
          ,Text('Date of Birth',style: TextStyle(fontSize:20.0,color: Colors.grey[500],letterSpacing: 2.0))
          ,Text('19/7/2000',style: TextStyle(fontSize:15.0,color: Colors.green,letterSpacing: 2.0))
          ,SizedBox(height: 15.0,)
          ,Text('Adress',style: TextStyle(fontSize:20.0,color: Colors.grey[500],letterSpacing: 2.0))
          ,Text('105/8/21 Cau Xay 2,Tan Phu Ward,District 9(old hcm city adress),Thu Duc City',style: TextStyle(fontSize:15.0,color: Colors.green,letterSpacing: 2.0))
          ,SizedBox(height: 15.0,)
          ,Text('Email',style: TextStyle(fontSize: 20.0,color:Colors.grey[500],letterSpacing: 2.0),)
          ,Row(
            children: [
              Icon(Icons.mail,size: 30.0,color: Colors.lightBlue,),
              Text('nguyentrungnghia19720@gmail.com',style: TextStyle(color: Colors.white,fontSize: 15.0,letterSpacing: 1.0),),
            ],
          )
          ,Text('Time Click: $clickTime',style: TextStyle(color: Colors.pinkAccent,fontSize: 20.0),)
        ],

      ),
      ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                clickTime++;
              });
            },
        child: Text('click \n me'),),
    );
  }
}
