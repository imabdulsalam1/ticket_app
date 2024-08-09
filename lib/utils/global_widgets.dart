import 'package:flutter/cupertino.dart';

Widget reusableText(String title,
    {Color color = CupertinoColors.black,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.normal,
      int maxLines = 1,
      bool isTextAlign = false,
      height = 1.5}) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
    textAlign: isTextAlign == true ? TextAlign.center : TextAlign.start,
    style: TextStyle(
        height: 1.5,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: '"Gill Sans", sans-serif',letterSpacing: 1.5),
  );
}

Widget reusableIcon(String path, {double width = 30, double height = 30}) {
  return SizedBox(
    width: width,
    height: height,
    child: Image(image: AssetImage("assets/$path.png,assets/$path.jpg")),
  );
}