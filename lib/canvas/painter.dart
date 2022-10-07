import 'package:animated_react_button/model/Bubble.dart';
import 'package:flutter/material.dart';

class ReactPainter extends CustomPainter {
  final double value;
  List<Bubble> bubbles;
  ReactPainter({required this.value, required this.bubbles});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    for (var bubble in bubbles) {
      Paint paint = Paint()
        ..strokeCap = StrokeCap.butt
        ..strokeWidth = 5
        ..color = bubble.color;

      canvas.drawCircle(Offset(bubble.dx, bubble.dy), bubble.r, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
