import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.538);
    path.quadraticBezierTo(
      size.width * 0.0625,
      size.height * 0.7105,
      size.width * 0.5,
      size.height * 0.768,
    );
    path.quadraticBezierTo(
      size.width * 0.900,
      size.height * 0.810,
      size.width,
      size.height,
    );
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
