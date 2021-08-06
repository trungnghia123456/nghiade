import 'package:day1/diet_plan/shared/circleplus.dart';
import 'package:flutter/material.dart';

class MealItemSnack extends StatelessWidget {
  const MealItemSnack({Key? key}) : super(key: key);

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
                color: Colors.pink.shade600,
                borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Snack',
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
                  'Recommend,\n800 kcal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                CirclePlus(color: Colors.pink.shade600)
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
                    'https://cdn.iconscout.com/icon/premium/png-256-thumb/watermelon-2630756-2176284.png'),
                fit: BoxFit.contain,
              ),
            ))
      ]),
    );
  }
}
