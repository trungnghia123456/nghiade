import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/brew.dart';

class BrewItem extends StatelessWidget {
  final Brew brew;
  BrewItem({required this.brew});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(10),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            CircleAvatar(
              radius: 29,
              backgroundColor: Colors.brown[brew.strenght],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                Text(
                  brew.name,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "Take " + brew.sugars + " sugars",
                  style: TextStyle(color: Colors.brown[500], fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
