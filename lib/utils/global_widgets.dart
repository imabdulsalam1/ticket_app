import 'package:flutter/material.dart';

import 'app_colors.dart';

Widget reusableText(String title,
    {Color color = Colors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    int maxLines = 10,
    height = 1.5}) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
    style: TextStyle(
        height: 1.5,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: '"Gill Sans", sans-serif',
        letterSpacing: 1.5),
  );
}

Widget reusableIcon(
    String path, {double width = 30, double height = 30}) {
  return SizedBox(
    width: width,
    height: height,
    child: Image(image: AssetImage("assets/$path.png,assets/$path.jpg")),
  );
}

Widget doubleText(
    BuildContext context,String bigText, String smallText,VoidCallback func) {

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      reusableText(
        bigText,
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: AppColors.homeScreenTxtColor,
      ),
      GestureDetector(
        onTap: func,
        child: reusableText(
          smallText,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
      ),
    ],
  );
}
