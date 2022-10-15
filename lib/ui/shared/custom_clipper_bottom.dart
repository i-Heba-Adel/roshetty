import 'package:flutter/material.dart';

class MyCustomClipperBottom extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0 , size.height);
    path.lineTo(0 ,size.height);
    // path.quadraticBezierTo(0 , size.height , 50 , size.height);
    path.lineTo(size.width , size.height);
    path.moveTo(size.width * 0.8 , size.height);
    path.lineTo(size.width *1.5 , size.height);
    path.quadraticBezierTo(0 , size.height * 0.9 , 80 , size.height + 180);
    path.lineTo(size.width * 7 , size.height * 0.8);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}