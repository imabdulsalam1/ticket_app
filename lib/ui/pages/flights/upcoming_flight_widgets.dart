import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

Widget flightCardOne(context, String text, imgPath) {
  final size = MediaQuery.of(context).size;

  return Row(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width * 0.44,
        height: 435,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.green.shade200, blurRadius: 1, spreadRadius: 1)
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            reusableText(text,
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: AppColors.hotelTxtColor,
                maxLines: 5)
          ],
        ),
      ),
    ],
  );
}

Widget upComingFlightCard(context) {
  final size = MediaQuery.of(context).size;

  return Column(
    children: [
      Stack(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          width: size.width * 0.44,
          height: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xFF3AB8B8),
            boxShadow: [
              BoxShadow(
                  color: Colors.green.shade200, blurRadius: 1, spreadRadius: 1)
            ],
          ),
          child: Column(
            children: [
              reusableText("Discount for survey",
                  maxLines: 5,
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: size.height * 0.005,
              ),
              reusableText("Take survey about our services abd get discount.",
                  maxLines: 5,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ],
          ),
        ),
        Positioned(
          right: -45,
          top: -40,
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 18, color: AppColors.circleColor)),
          ),
        )
      ]),
      SizedBox(
        height: size.height * 0.015,
      ),
      Container(
        padding: const EdgeInsets.all(16),
        width: size.width * .44,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFFEC6545),
        ),
        child: Column(
          children: [
            reusableText("Take Love",
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
            SizedBox(
              height: size.height * 0.005,
            ),
            reusableText("😂",
                color: Colors.white, fontSize: 80, fontWeight: FontWeight.w500),
          ],
        ),
      )
    ],
  );
}
