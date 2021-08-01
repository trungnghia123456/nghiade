import 'package:day1/explore/card.dart';
import 'package:day1/explore/filter.dart';
import 'package:flutter/material.dart';
import 'exploredata.dart';
import 'package:jiffy/jiffy.dart';

class ExploreUI extends StatefulWidget {
  @override
  _ExploreUIState createState() => _ExploreUIState();
}

//define data
String _searchText = '';
List<ExploreData> listData = [
  ExploreData(
      name: 'Grand Royal Hotel',
      price: '180',
      range: 2.0,
      location: 'Wembley, London',
      ratingValue: 4.5,
      reviewers: 80,
      url:
          'https://www.jagdhof.com/grafik/resize/1920x880_upload-website-pageimage--welcome-to-the-dolcevita-hotel-jagdhof--2_494_3840x1760.jpg'),
  ExploreData(
      name: 'Queen Hotel',
      price: '200',
      range: 4.0,
      location: 'Wembley, London',
      ratingValue: 5.0,
      reviewers: 74,
      url:
          'https://pix10.agoda.net/hotelImages/6539864/0/ffc59cb6ddd5cd21972abbca08d443e2.jpg?s=1024x768'),
  ExploreData(
      name: 'Grand Royal Hotel',
      price: '60',
      range: 3.0,
      location: 'Wembley, London',
      ratingValue: 4.0,
      reviewers: 62,
      url:
          'https://cf.bstatic.com/xdata/images/hotel/270x200/276540483.jpg?k=aa6c48de0d60745caebbb67d952bb073f27a87f51bfb08d58a1cac6704d6f4e9&o='),
  ExploreData(
      name: 'Queen Hotel',
      price: '170',
      range: 7.0,
      location: 'Wembley, London',
      ratingValue: 4.5,
      reviewers: 90,
      url:
          'https://cf.bstatic.com/xdata/images/hotel/270x200/227683814.jpg?k=446c142ec9f06d270921f26d21df952a01cf9ec2ee2c754fcadc8bfda3f2e515&o='),
  ExploreData(
      name: 'Grand Royal Hotel',
      price: '200',
      range: 2.0,
      location: 'Wembley, London',
      ratingValue: 5.0,
      reviewers: 240,
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ2oJr8oZY0uNl5esuMyJSXHOLlFXaNeL5fw&usqp=CAU')
];
DateTime startDay = DateTime.now();
DateTime endDay = DateTime.now();

//main
class _ExploreUIState extends State<ExploreUI> {
  DateTime startDay = DateTime.now();
  DateTime endDay = DateTime.now().add(new Duration(days: 8));
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            //search
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((40.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0)),
                        labelText: 'search',
                        hintText: 'London...',
                        fillColor: Colors.white),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      print(_searchText);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.search),
                    ))
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () async {
                    var calendarResult = await showDateRangePicker(
                        context: context,
                        firstDate: startDay,
                        lastDate: endDay);
                    if (calendarResult != null) {
                      setState(() {
                        startDay = calendarResult.start;
                        endDay = calendarResult.end;
                      });
                    }
                  },
                  child: Column(
                    children: [
                      Text(
                        'Choose date',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        '${Jiffy(startDay).MMMMd} - ${Jiffy(endDay).MMMMd}',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Text('     |     \n     |     '),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Text(
                        'Number of Rooms',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Text(
                        '1 Room  -  2 Adults',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text('530 Hotel Found'),
                  SizedBox(
                    width: 150,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.filter_alt,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExploreCard(data: listData[index]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
