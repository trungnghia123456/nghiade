import 'package:day1/diet_plan/shared/circleplus.dart';
import 'package:flutter/material.dart';

class MealItemDinner extends StatelessWidget {
  const MealItemDinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Positioned(
          child: Container(
            width: 150,
            height: 200,
            padding: EdgeInsets.only(left: 10, right: 15, bottom: 5),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.only(top: 50, left: 10, bottom: 10),
            width: 150,
            height: 179,
            decoration: BoxDecoration(
                color: Colors.purple.shade600,
                borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dinner',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Recommend:\n703 kcal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                CirclePlus(color: Colors.purple.shade600),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 10,
            child: Container(
              alignment: Alignment.topLeft,
              width: 70,
              height: 70,
              color: Colors.transparent,
              child: Image(
                image: NetworkImage(
                    'https://icons-for-free.com/iconfiles/png/512/food+meat+protein+steak+icon-1320168012786819398.png'),
                fit: BoxFit.contain,
              ),
            ))
      ]),
    );
  }
}
