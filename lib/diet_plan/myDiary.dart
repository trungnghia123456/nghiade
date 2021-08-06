import 'package:day1/diet_plan/home.dart';
import 'package:day1/diet_plan/mydiarycontainer.dart';
import 'package:day1/diet_plan/shared/circleplus.dart';
import 'package:day1/diet_plan/training/sliverAppbar.dart';
import 'package:day1/diet_plan/training/training.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MyDiary extends StatefulWidget {
  const MyDiary({Key? key}) : super(key: key);

  @override
  _MyDiaryState createState() => _MyDiaryState();
}

final tabs = [
  MyDiaryContainer(),
  SliverAppbar(),
  MyDiaryContainer(),
  SliverAppbar(),
  MyDiaryContainer(),
];

class _MyDiaryState extends State<MyDiary> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CirclePlus(
          color: Colors.blue,
        ),
      ),
      bottomNavigationBar: WaterDropNavBar(
        // bottomPadding: 8.0, for android maybe, test by yourself what is suitable
        backgroundColor: Colors.yellow,

        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.bookmark_rounded,
            outlinedIcon: Icons.bookmark_border_rounded,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
            filledIcon: Icons.email_rounded,
            outlinedIcon: Icons.email_outlined,
          ),
          BarItem(
            filledIcon: Icons.folder_rounded,
            outlinedIcon: Icons.folder_outlined,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
