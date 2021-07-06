import 'package:flutter/material.dart';
import 'QuoteClass.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<QuoteClass> listData = [
    QuoteClass("nghia","hoc sinh gioi cap the gioi",'https://1.bp.blogspot.com/-4l45hfEPAb8/XpyxHlst9CI/AAAAAAAAAYs/mcUwBU6kzCMViLTfQ3KRBeoc3l15N7xzQCEwYBhgLKs0DAL1OcqwODyPVEyl6fRRCA40tdw1ThAwSjG15i5hnFC8qVnRX9saAYNGfc3w7UOjTlGhh3JDtoUnGmEZmZokKWURiXf-jriTrDntkTSvZkPyC69M9RSjZF69MTuiRIcDnzvDjrnBUT33KosQnEZFRuXk_2JoK3TI8fcmCWM0cIJonU6nu8ntQN28SUApbXhO0W6JG4bNSuLIVCmRqt1yr4E5q-xuG5CPO4kkScjBngaacwmuIeaN15nKjVYy-plNo5A6M9JuB6r4pxjPmjAXCtwGoQys48-rOfIhEdtLmRae3sSX0CZX6zEBprHTJopbKEHF8rdsAgEnXkU22pA8wj3Yz9lBzzK5FBlxl7BP-z5W1AjXUx8B-8xPo6osEBxZk_Wuv2Ihs1Lg8brXbWSi-1m0Pps6DvLjJWOwUzWnhJkTUvCa2_g9-SWvUbbtYvjgJx4bbe-cqsEFhKB4XW5seEjBMXWKeE1i0W7ohgaX2LSb7uwSDmvsNw9iFlgZThoQ9s1qumfP98TiCLF8Ml70vk4uyJY8PPjMRIlV4wCMTmFwKal5rXEEkU9A010DrPG5_c_I_Xj4kTcDosKmyNDG7j3nsznUu_TkTpYPQHLUwiOfy9AU/s1600/How-to-draw-Pikachu.jpg'),
    QuoteClass("loi", "hoc sinh gioi nhat truong",'https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-1/p100x100/198712479_1321834541551860_6785827527546744215_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=7206a8&_nc_ohc=AY_iSZKyoQgAX-FT1wI&_nc_oc=AQl0jpTAUivAbvmHHn5RKiglraoR2I2PoRwoX5Z_4N3wIqB2TFB27kfDy_4TA2ylrg0fN-KXD6ym_5H7c0jSB8Jn&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-sin6-2.xx&tp=6&oh=879e05f3db71a42fcf1e816da582deb6&oe=60E95192'),
    QuoteClass("duy", "hoc sinh eo them hoc",'https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-9/101718257_343720936606238_5541286102863708160_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=oKtYx3c9SkYAX-GYZ2J&_nc_ht=scontent-sin6-3.xx&oh=5859eed10f9691302a0210d8bf51c646&oe=60E9E322'),
    QuoteClass("Sinh", "hoc sinh lầm lì nguy hiểm",'https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/150250573_501314531302924_9151686609406618298_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=174925&_nc_ohc=op1-LlMHER8AX__SVJN&_nc_ht=scontent-sin6-2.xx&oh=1d045dcc0de071345a73704dbce36d62&oe=60E880DC')
  ];

  Widget CustomList(QuoteClass quote){
    return Card(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(quote.url),radius: 50.0,),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Text(quote.author,style: TextStyle(fontSize: 15.0,color: Colors.green),),
              Text(quote.quote,style: TextStyle(fontSize: 13.0,color: Colors.orange),)
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My list Quote'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        color: Colors.grey[500],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: listData.map((e) => CustomList(e)).toList()
        ),
      ),
    );
  }
}

