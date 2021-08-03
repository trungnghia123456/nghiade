import 'package:day1/design_course/UI.dart';
import 'package:day1/test.dart';
import 'package:flutter/material.dart';
import 'explore/home.dart';
import 'test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: UIDesignCourse(
      title: 'Design Course',
    ));

    // return MaterialApp(
    //     home: MyHomePage(
    //   title: 'Explore',
    // ));
  }
}
