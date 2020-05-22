import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  final double curveHeight = 100;
  final double curveWidth = 50;
  final double initialDistance = 0;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(initialDistance, size.height);
    path.quadraticBezierTo(initialDistance, size.height - curveHeight,
        curveHeight + curveWidth, size.height - curveHeight);
    path.lineTo(size.width, size.height - curveHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
