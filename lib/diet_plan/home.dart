import 'package:day1/diet_plan/footer.dart';
import 'package:day1/diet_plan/footer2.dart';
import 'package:day1/diet_plan/item/meal_item_breakfast.dart';
import 'package:day1/diet_plan/item/meal_item_dinner.dart';
import 'package:day1/diet_plan/item/meal_item_lunch.dart';
import 'package:day1/diet_plan/item/meal_item_snack.dart';
import 'package:day1/diet_plan/progresscontainer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Mediterranean diet',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                Spacer(),
                TextButton(
                  child: Text(
                    'Details  ->',
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            buildContainer(context),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Meals today',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade200)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Customize',
                        style: TextStyle(color: Colors.indigo, fontSize: 17),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.black,
                        size: 17,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey.shade200,
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MealItemBreakfast(),
                  SizedBox(
                    width: 20,
                  ),
                  MealItemLunch(),
                  SizedBox(
                    width: 20,
                  ),
                  MealItemSnack(),
                  SizedBox(
                    width: 20,
                  ),
                  MealItemDinner()
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Body measurement',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                Spacer(),
                Text(
                  'Today',
                  style: TextStyle(color: Colors.indigo, fontSize: 17),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 17,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Footer(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Water',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                Spacer(),
                Text(
                  'Aqua SmartBottle',
                  style: TextStyle(color: Colors.indigo, fontSize: 17),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 17,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Footer2(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                  ),
                  Positioned(
                    bottom: 10,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Colors.blue.shade300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 110, right: 10),
                          child: Text(
                            'Prepare your stomach for lunch\n with one of two glass of water',
                            style: TextStyle(
                              color: Colors.indigo.shade700,
                              fontSize: 13,
                            ),
                          ),
                        )),
                  ),
                  Positioned(
                    top: 0,
                    left: 30,
                    child: Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Image(
                        image: NetworkImage(
                          'https://static.wixstatic.com/media/2cd43b_baf299d6634e4558bae767ce2b277ade~mv2.png/v1/fill/w_288,h_288,q_90/2cd43b_baf299d6634e4558bae767ce2b277ade~mv2.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
