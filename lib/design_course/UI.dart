import 'package:day1/design_course/UI_body.dart';
import 'package:flutter/material.dart';

class UIDesignCourse extends StatefulWidget {
  const UIDesignCourse({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _UIDesignCourseState createState() => _UIDesignCourseState();
}

class _UIDesignCourseState extends State<UIDesignCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/originals/76/c3/34/76c334e7052f9614b56a1942c12655db.gif'),
            radius: 40,
          )
        ],
      ),
      body: UIBody(),
    );
  }
}
