import 'package:flutter/material.dart';

class CategoryPatternPainter extends CustomPainter {
  final Color color;

  CategoryPatternPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final spacing = size.width / 10;
    
    for (var i = 0; i < 20; i++) {
      final x = spacing * i;
      canvas.drawLine(
        Offset(x, 0),
        Offset(x + spacing, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CategoryPatternPainter oldDelegate) =>
      color != oldDelegate.color;
}