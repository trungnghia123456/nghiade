import 'package:flutter/material.dart';

class MealItemBreakfast extends StatelessWidget {
  const MealItemBreakfast({Key? key}) : super(key: key);

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
                color: Colors.orangeAccent.shade200,
                borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Breakfast',
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
                  'Bread,\nPeanut butter,\nApple',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Text(
                      '525',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      '  kcal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
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
                    'https://image.flaticon.com/icons/png/512/2510/2510354.png'),
                fit: BoxFit.contain,
              ),
            ))
      ]),
    );
  }
}
