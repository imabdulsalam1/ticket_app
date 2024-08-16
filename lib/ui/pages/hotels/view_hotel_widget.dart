import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

Widget hotelWidget(BuildContext context, {required Map<String, dynamic> hotel}) {
  final size = MediaQuery.of(context).size;

  return Container(

    margin: const EdgeInsets.only(right: 16),
    padding: const EdgeInsets.all(8),
    width: size.width * 0.7,
    // height: size.height * 0.45,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(18)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:  DecorationImage(
            image: AssetImage("assets/hotel_images/${hotel["image"]}"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: size.height *0.02,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          reusableText(hotel["place"],color: AppColors.hotelTxtColor,fontSize: 22,fontWeight: FontWeight.w600),
          SizedBox(height: size.height *0.005,),
          reusableText(hotel["destination"],color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
          SizedBox(height: size.height *0.005,),
            // reusableText("₹${hotel["price"]?.toString() ?? 'N/A'}/Night", color: AppColors.hotelTxtColor, fontSize: 22, fontWeight: FontWeight.w600),
            reusableText("₹${hotel["price"]}/Night", color: AppColors.hotelTxtColor, fontSize: 22, fontWeight: FontWeight.w600,),
        ],),),
      )
      ],),
  );
}
