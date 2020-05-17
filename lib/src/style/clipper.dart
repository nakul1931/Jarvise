import 'package:flutter/material.dart';

class LoginClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    print(size);
    Path a = Path();
    // a.lineTo(0, size.height);
    // a.lineTo(size.width, 0);

    a.addArc(Rect.fromLTWH(0, 0, size.width, 10.0), 30.0, 60.0);
    return a;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(60, 10)
        );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

