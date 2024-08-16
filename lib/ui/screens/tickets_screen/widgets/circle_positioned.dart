import 'package:flutter/material.dart';

Widget circlePositioned(bool? pos) {
  return Positioned(
    top: 235,
    left: pos == true ? 405 : 21,
    child: Container(
      decoration:
          BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 3)),
      padding: const EdgeInsets.all(3),
      child: const CircleAvatar(
        maxRadius: 4,
        backgroundColor: Colors.black87,
      ),
    ),
  );
}
