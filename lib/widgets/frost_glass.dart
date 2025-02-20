import 'dart:ui';

import 'package:flutter/material.dart';

class FrostGlass extends StatelessWidget {
  final double theWidth;
  final double theHeight;
  final theWidget;
  const FrostGlass(
      {super.key,
      required this.theWidth,
      required this.theHeight,
      required this.theWidget});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.13)),
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.15),
                    Colors.white.withOpacity(0.05)
                  ])),
              child: theWidget,
            ),
          ],
        ),
      ),
    );
  }
}
