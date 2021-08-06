import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 91, 136, 151)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.7;
    paint_0.shader = ui.Gradient.radial(
        Offset(size.width * 0.50, size.height * 0.68), size.width * 0.06, [
      Color(0xffe7d3d3),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xfff2ebeb),
      Color(0xfff4ebeb),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xff000000),
      Color(0xffddcdcd)
    ], [
      0.00,
      0.11,
      0.20,
      0.25,
      0.30,
      0.36,
      0.53,
      0.67,
      0.81,
      0.89,
      1.00
    ]);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9987500, size.height * 0.4950000);
    path_0.lineTo(size.width * 0.9990000, size.height * 0.9990000);
    path_0.lineTo(size.width * 0.0012500, size.height * 0.9950000);
    path_0.lineTo(0, size.height * 0.5020000);
    path_0.quadraticBezierTo(size.width * 0.2890625, size.height * 0.4075000,
        size.width * 0.3762500, size.height * 0.3650000);
    path_0.cubicTo(
        size.width * 0.4390625,
        size.height * 0.3697500,
        size.width * 0.4336875,
        size.height * 0.5952500,
        size.width * 0.4485000,
        size.height * 0.6440000);
    path_0.quadraticBezierTo(size.width * 0.5033750, size.height * 0.8857500,
        size.width * 0.5630000, size.height * 0.5950000);
    path_0.quadraticBezierTo(size.width * 0.5862500, size.height * 0.3530000,
        size.width * 0.6220000, size.height * 0.3750000);
    path_0.quadraticBezierTo(size.width * 0.7151875, size.height * 0.4070000,
        size.width * 0.9987500, size.height * 0.4950000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
