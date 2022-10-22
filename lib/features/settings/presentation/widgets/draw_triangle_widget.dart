import 'package:flutter/material.dart';

class DrawTriangle extends CustomPainter {
  final bool isReverse;
  final Color color;

  DrawTriangle({
    required this.isReverse,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(isReverse ? size.width : 0, 0);
    if (isReverse) {
      path.lineTo(0, 0);
    } else {
      path.lineTo(0, size.height);
    }
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, Paint()..color = color);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
