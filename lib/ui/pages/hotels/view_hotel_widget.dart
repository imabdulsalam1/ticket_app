import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

Widget hotelWidget(BuildContext context,
    {required Map<String, dynamic> hotel, bool? isTextSize = false}) {
  final size = MediaQuery.of(context).size;

  return Container(
    margin: const EdgeInsets.only(right: 16),
    padding: const EdgeInsets.all(8),
    width: size.width * 0.7,
    decoration: BoxDecoration(
        color: AppColors.primaryColor, borderRadius: BorderRadius.circular(18)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage("assets/hotel_images/${hotel["image"]}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          // height: size.height,
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              reusableText(
                hotel["place"],
                color: AppColors.hotelTxtColor,
                fontSize: 16,
                maxLines: 1,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              reusableText(hotel["destination"],
                  color: Colors.white,
                  fontSize: 13,
                  maxLines: 1,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: size.height * 0.005,
              ),
              reusableText(
                "₹${hotel["price"]}/Night",
                color: AppColors.hotelTxtColor,
                fontSize: 16,
                maxLines: 1,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
