import 'package:day1/design_course/carddata/carddata1.dart';
import 'package:day1/design_course/carddata/carddata2.dart';
import 'package:day1/design_course/carddata/courseClass2.dart';
import 'package:day1/design_course/carddata/courseClass2.dart';
import 'package:day1/design_course/radioTemplate.dart';
import 'package:flutter/material.dart';
import 'package:day1/design_course/carddata/courseClass1.dart';

class UIBody extends StatefulWidget {
  const UIBody({Key? key}) : super(key: key);

  @override
  _UIBodyState createState() => _UIBodyState();
}

class _UIBodyState extends State<UIBody> {
  String _searchValue = '';
  List<CourseData1> listData = [
    CourseData1(
        courseName: 'User interface \n Design',
        lesson: 24,
        price: 25,
        rating: 4.3,url: 'https://mondaycareer.com/wp-content/uploads/2020/11/anime-l%C3%A0-g%C3%AC-vampire.jpg'),
    CourseData1(
        courseName: 'User interface \n Design',
        lesson: 22,
        rating: 4.6,
        price: 180,url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-oSNc6V--7BvngSQEt7J2UHvqOmFvCGQfWg&usqp=CAU'),
    CourseData1(
        courseName: 'User interface \n Design',
        lesson: 24,
        price: 25,
        rating: 4.3,url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR65ecLHtUYXZIq8JPDbQLaMtkXmN21zTz4pw&usqp=CAU'),
    CourseData1(
        courseName: 'User interface \n Design',
        lesson: 22,
        price: 18,
        rating: 4.6,url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdZTtK6pHqjvMrFvkwyTP_WgXYLrSAdna_8w&usqp=CAU')
  ];

  var newData =
      new CourseData2(courseName: 'App Design Course', lesson: 12, rating: 4.8,url: 'https://i1.sndcdn.com/artworks-IWwBrmuYh1pXatg1-Mwoq7A-t500x500.jpg');
  var newData2 =
      CourseData2(courseName: 'Wed Design Course', lesson: 28, rating: 4.9,url:'https://kenh14cdn.com/zoom/320_200/203336854389633024/2020/12/9/photo1607499675831-16074996760221262205174.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Search for course'),
                    onChanged: (value) {
                      setState(() {
                        _searchValue = value;
                      });
                    },
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Category',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.w700)),
          SizedBox(
            height: 20,
          ),
          Container(
            child: CustomRadio(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 120,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.black),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                return HorizonalCardData(courseData: listData[index]);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Popular Course',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          Container(
            margin: EdgeInsets.only(left: 40),
            width: double.infinity,
            height: 200,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return PopularCourseData(
                  courseData: newData,
                  courseData2: newData2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
