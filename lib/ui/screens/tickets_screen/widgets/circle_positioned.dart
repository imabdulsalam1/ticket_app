import 'package:flutter/material.dart';

Widget circlePositioned(context, bool? position) {
  final double leftPosition = position != null
      ? (position ? MediaQuery.of(context).size.width - 40.0 : 18.0)
      : 18.0;

  return Positioned(
    top: 154,
    left: leftPosition,
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
