import 'package:day1/design_course/carddata/courseClass1.dart';
import 'package:day1/design_course/carddata/detail/detail.dart';
import 'package:flutter/material.dart';
import 'courseClass1.dart';

class HorizonalCardData extends StatefulWidget {
  const HorizonalCardData({Key? key, required this.courseData})
      : super(key: key);

  final CourseData1 courseData;

  @override
  _HorizonalCardDataState createState() => _HorizonalCardDataState();
}

class _HorizonalCardDataState extends State<HorizonalCardData> {
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
      child: Stack(
        children: [
          Container(
            width: 320,
            color: Colors.cyan,
          ),
          Positioned(
            right: 30,
            child: Card(
                margin: EdgeInsets.only(right: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey[100],
                child: Container(
                  width: 220,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.courseData.courseName,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.courseData.lesson.toString() +
                                    '  lesson',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                widget.courseData.rating.toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${widget.courseData.price.toString()}',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueAccent),
                                width: 34,
                                height: 34,
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
            top: 16,
            left: 0,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(90)),
                  color: Colors.white),
              child: Image(
                image: NetworkImage(widget.courseData.url),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
