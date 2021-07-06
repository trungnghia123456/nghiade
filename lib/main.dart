import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Home()
  ));
}

 class Home extends StatelessWidget {
   String uri1='assets/image1.png';
   String uri2='assets/image2.png';
   String temp ='';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('my Code Project',
            style: TextStyle(
              color: Colors.pink[20],
              fontFamily: 'IndieFlower',
            ),),
        ),
        body: Column(
          
           children: [
             Row(
               
               crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Ranking by bmi',style: TextStyle(fontSize: 20,color: Colors.teal),)],
             ),
             Container(
               color: Colors.green,
              padding: EdgeInsets.all(10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                 children: [
                   Text('Nghia',style: TextStyle(backgroundColor: Colors.green,color: Colors.lightBlue,fontSize: 30),),
                   Image(image: NetworkImage('https://scontent-xsp1-2.xx.fbcdn.net/v/t1.6435-9/151530752_264457555079480_2571079607098535660_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=174925&_nc_ohc=_mVBNtqfpL0AX99TZQW&_nc_ht=scontent-xsp1-2.xx&oh=42097fc8bb37aafe4bc744a895571500&oe=60E832DD'),height: 150,width: 150,)
                 ],
               ),
             ),
             Container(
               color: Colors.pink,
               padding: EdgeInsets.all(10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text('Sinh',style: TextStyle(color: Colors.amberAccent,fontSize: 20.0),),
                   Image(image: NetworkImage('https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/150250573_501314531302924_9151686609406618298_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=174925&_nc_ohc=op1-LlMHER8AX_1Vh6A&_nc_ht=scontent-sin6-2.xx&oh=95a415c2587a9571c7ba9d7ee40e4cd2&oe=60E880DC',),width: 150,height: 150,)
                 ],
               ),
             ),
             Container(
               child: Row(
               children: [
                 Row(
                   children: [
                     Container(
                       color: Colors.purpleAccent,
                       padding: EdgeInsets.all(20.0),
                       child: Row(
                         children: [
                           Text('Duy',style: TextStyle(color: Colors.red,fontSize: 20.0),)
                           ,Image(image: NetworkImage('https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-9/101718257_343720936606238_5541286102863708160_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=SlBaj7dG--UAX89c4CE&_nc_ht=scontent-sin6-3.xx&oh=d3fd765eea67dc7e1b6610b42e90229b&oe=60E7E8E2'),width: 150,height: 150,)
                         ],
                       ),
                     )
                   ],
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        color: Colors.orange,
                        child: Row(children: [
                          Text('Loi',style: TextStyle(fontSize: 20.0,color: Colors.cyan),),
                          Image(image: NetworkImage('https://scontent-xsp1-3.xx.fbcdn.net/v/t1.6435-1/p100x100/198712479_1321834541551860_6785827527546744215_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=7206a8&_nc_ohc=AY_iSZKyoQgAX8mL6PZ&_nc_oc=AQkBaC5-dQ1gtR9-gLM9w92mDUvsz03yc0YhXLe70JVJGfcwTromBFxjyV-7WJwbKqA&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-xsp1-3.xx&tp=6&oh=ac590d1f1dec772717d930b0e06c33a6&oe=60E95192'),width: 119.4,height: 150,)

                        ],),
                      )
                     ],
                 ),
               ],
               ),
             )
           ],
            
        ),

        floatingActionButton: FloatingActionButton(
            onPressed: (){print('yamete kunasai');},
            child:const Center(
              child: Text('click \n ',style: TextStyle(
                color:Colors.amber,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                fontSize: 16,

              ),),)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    }
  }

