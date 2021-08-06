import 'package:day1/diet_plan/myDiary.dart';
import 'package:flutter/material.dart';
import 'diet_plan/shared/playIcon.dart' as globals;


 main() {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDiary(),
      //   home: UIDesignCourse(
      // title: 'Design Course',
    );

    // return MaterialApp(
    //     home: MyHomePage(
    //   title: 'Explore',
    // ));
  }
}
