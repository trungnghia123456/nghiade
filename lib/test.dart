import 'package:flutter/material.dart';

class ContainerWithCircle extends StatelessWidget {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 300,
            height: 250,
          ),
          Container(
            width: 200,
            height: 150,
            color: Colors.white,
          ),
          Positioned(
            top: 70,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
