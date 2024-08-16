import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_colors.dart';

import '../../../../utils/global_widgets.dart';

Widget tktHotelTabs(context, String text, bool tabBorderRadius, Color white) {
  final size = MediaQuery.of(context).size;

  return Container(
    padding: const EdgeInsets.symmetric(vertical: 7),
    width: size.width * .44,
    decoration: BoxDecoration(
      borderRadius: tabBorderRadius == false
          ? const BorderRadius.horizontal(left: Radius.circular(50))
          : const BorderRadius.horizontal(right: Radius.circular(50)),
      color: white,
    ),
    child: Center(
      child: reusableText(text, fontWeight: FontWeight.w500, fontSize: 17),
    ),
  );
}

Widget iconWithText(context,String text, icon) {

  final size = MediaQuery.of(context).size;

  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Column(children: [
      Row(
        children: [
           Icon(
            icon,
            color: AppColors.planeColor,
          ),
          SizedBox(width: size.width * 0.04,),
          reusableText(text,fontSize: 17,fontWeight: FontWeight.w500,color: AppColors.homeScreenTxtColor)
        ],
      ),
    ],)
  );
}

Widget findTickets(context,) {

  // final size = MediaQuery.of(context).size;

  return Container(

    padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.findTicketColor,
    ),
    child: Center(child: reusableText("Find Tickets",fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white))
  );
}

Widget tabs(context,String txtFirst,String txtSecond){
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFf4f6fd)),
    child: Row(
      children: [
        Center(
          child: tktHotelTabs(context, txtFirst, false, Colors.white),
        ),
        Center(
          child: tktHotelTabs(context, txtSecond, true, Colors.transparent),
        ),
      ],
    ),
  );
}