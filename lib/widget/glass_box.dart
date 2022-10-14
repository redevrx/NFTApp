import 'dart:ui';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class GlassBox extends StatelessWidget {
  final double radius;
  final double sigmaY;
  final double sigmaX;
  final Color color;
  final Widget child;
  final double width;
  final double height;
  const GlassBox(
      {Key? key,
      this.radius = 18.0,
      this.sigmaY = 10.0,
      this.sigmaX = 10.0,
      this.color = Colors.transparent,
      required this.child, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: sigmaX, sigmaX: sigmaX),
        child: Container(
          width: width,
          height: height,
          color: color,
          child: child,
        ),
      ),
    );
  }
}

class GlassBoxGradient extends StatelessWidget {
  final double radius;
  final double sigmaY;
  final double sigmaX;
  final Color colorBegin;
  final Color colorEnd;
  final Widget child;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const GlassBoxGradient(
      {Key? key,
      this.radius = 18.0,
      this.sigmaY = 10.0,
      this.sigmaX = 10.0,
      required this.colorBegin,
      required this.colorEnd,
      required this.child,
      this.begin = Alignment.centerLeft,
      this.end = Alignment.topRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: sigmaX, sigmaX: sigmaX),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: begin, end: end, colors: [colorBegin, colorEnd])),
          child: child,
        ),
      ),
    );
  }
}
