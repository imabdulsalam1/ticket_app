import 'package:flutter/material.dart';

Widget textStyle2(String text, {TextAlign align = TextAlign.start,bool? isColor}) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style:  TextStyle(
        color: isColor==null?Colors.white:Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
    textAlign: align,
    maxLines: 1,
  );
}

Widget textStyle3(
  String text, {
  TextAlign align = TextAlign.start,
      bool? isColor
}) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        color: isColor==null?Colors.white:Colors.grey.shade500,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5),
    textAlign: align,
    maxLines: 1,
  );
}
