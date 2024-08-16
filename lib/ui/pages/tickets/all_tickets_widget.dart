import 'package:flutter/material.dart';
import 'package:ticket_app/utils/global_widgets.dart';

import '../../../utils/app_colors.dart';

Widget ticketDots(bool? isColor) {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : AppColors.ticketDotColor),
        borderRadius: BorderRadius.circular(20)),
  );
}

Widget ticketCircle(bool isRight, {bool? isColor}) {
  return SizedBox(
    height: 20,
    width: 10,
    child: DecoratedBox(
      decoration: BoxDecoration(
          color: AppColors.appBgColor,
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(10), topLeft: Radius.circular(10))
              : const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
    ),
  );
}

Widget columnTextLayout(String text1, String text2,
    {CrossAxisAlignment alignment = CrossAxisAlignment.start, bool? isColor,int maxLines = 10,}) {
  return Column(
    crossAxisAlignment: alignment,
    children: [
      reusableText(text1,
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: isColor == null ? Colors.white : Colors.black,maxLines: 1),
      const SizedBox(
        height: 5,
      ),
      reusableText(text2,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          maxLines: 1,
          color: isColor == null ? Colors.white : Colors.grey.shade500)
    ],
  );
}
