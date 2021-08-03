import 'package:day1/design_course/carddata/detail/detail.dart';
import 'package:flutter/material.dart';
import 'courseClass2.dart';

class PopularCourseData extends StatefulWidget {
  const PopularCourseData(
      {Key? key, required this.courseData, required this.courseData2})
      : super(key: key);

  final CourseData2 courseData;
  final CourseData2 courseData2;
  @override
  _PopularCourseDataState createState() => _PopularCourseDataState();
}

class _PopularCourseDataState extends State<PopularCourseData> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DetailData();
          },
        ));
      },
      child: Row(
        children: [
          Stack(children: [
            Container(
              width: 150,
              height: 160,
            ),
            Container(
              width: 150,
              height: 120,
              color: Colors.grey[200],
              child: Card(
                child: Column(
                  children: [
                    Text(
                      widget.courseData.courseName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.courseData.lesson.toString() + ' lesson',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text(
                          '  ' + widget.courseData.rating.toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 13,
              left: 43,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(90))),
                width: 80,
                height: 60,
                child: Image(
                  image: NetworkImage(widget.courseData2.url),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
          Stack(children: [
            Container(
              width: 150,
              height: 160,
            ),
            Container(
              width: 150,
              height: 120,
              color: Colors.grey[200],
              child: Card(
                child: Column(
                  children: [
                    Text(
                      widget.courseData2.courseName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.courseData2.lesson.toString() + ' lesson',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text(
                          '  ' + widget.courseData2.rating.toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 13,
              left: 43,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 80,
                height: 60,
                child: Image(
                  image: NetworkImage(widget.courseData2.url),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
