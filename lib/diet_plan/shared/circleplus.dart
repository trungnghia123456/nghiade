import 'package:flutter/material.dart';

class CirclePlus extends StatelessWidget {
  const CirclePlus({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.indigo.shade600,
                blurRadius: 8,
                offset: Offset(1, 3))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      height: 40,
      child: Text(
        '+',
        style: TextStyle(fontSize: 30, color: color),
      ),
    );
  }
}
