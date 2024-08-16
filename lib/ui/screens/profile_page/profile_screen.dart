import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/ui/pages/tickets/all_tickets_widget.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';
import 'package:ticket_app/utils/img_path/img_path.dart';
import 'package:ticket_app/utils/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(image: AssetImage(ImgPath.logo))
                ),
                // child: Text("data"),
              ),

              SizedBox(width: size.width*.04,),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                reusableText("Book Tickets",fontWeight: FontWeight.bold,fontSize: 22,),
                reusableText("Greater Noida",fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black45),

                    SizedBox(height: size.height*.008,),

                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: AppColors.profilePremiumColor,
                        borderRadius: BorderRadius.circular(100),
                      ),

                      child: Row(children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.profilePremiumShieldBgColor
                            ),
                            child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                              size: 15,
                            )
                          ),

                          SizedBox(width: size.width*.02,),

                          reusableText("Premium Status",fontSize: 13,fontWeight: FontWeight.w500,color: AppColors.profilePremiumShieldBgColor)

                        ],
                      ),
                    )
              ]),

              Expanded(child: Container()),

              InkWell(
                  onTap: (){
                    if (kDebugMode) {
                      print("Edit button tapped.");
                    }
                  },
                  child: reusableText("Edit",color: AppColors.primaryColor,fontWeight: FontWeight.w300))

            ],
          ),

          SizedBox(height: size.height*.008,),

          // Divider
          Divider(
            color: Colors.grey.shade300,),

          Stack(children: [

            Container(height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    maxRadius: 25,
                      backgroundColor: Colors.white,
                    child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,color: AppColors.primaryColor,),
                  ),
                  SizedBox(width: size.width*.04,),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                    textStyle2("You'v got a new award",maxLines: 2),
                    reusableText("You 95 flights in this year",color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w500),

                  ],)

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
                    border: Border.all(width: 18, color: AppColors.profileCircleColor)),
              ),
            )

          ],),

          SizedBox(
            height: size.height*.02,),

          reusableText("Accumulated miles",fontWeight: FontWeight.bold,fontSize: 18),

          SizedBox(height: size.height*.02,),

          Center(child: reusableText("192802",fontWeight: FontWeight.bold,fontSize: 32,color: AppColors.homeScreenTxtColor)),

          SizedBox(height: size.height*.02,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              reusableText("Miles accured",fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey.shade500),
              // Expanded(child: Container()),
              reusableText("24 Aug 2024",fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey.shade500),
            ],
          ),

          // SizedBox(height: size.height*.01,),
          Divider(color: Colors.grey.shade300,),
          // SizedBox(height: size.height*.01,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            columnTextLayout("23 043", "Miles",isColor: true,alignment: CrossAxisAlignment.start),
            columnTextLayout("Airline CO", "Received From",isColor: true,alignment: CrossAxisAlignment.end),
          ],),

          // SizedBox(height: size.height*.01,),
          Divider(color: Colors.grey.shade300,),
          // SizedBox(height: size.height*.01,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              columnTextLayout("52", "Miles",isColor: true,alignment: CrossAxisAlignment.start),
              columnTextLayout("McDonald's", "Received From",isColor: true,alignment: CrossAxisAlignment.end),
            ],),

          // SizedBox(height: size.height*.01,),
          Divider(color: Colors.grey.shade300,),
          // SizedBox(height: size.height*.01,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              columnTextLayout("52 340", "Miles",isColor: true,alignment: CrossAxisAlignment.start),
              columnTextLayout("Abdul Salam", "Received From",isColor: true,alignment: CrossAxisAlignment.end),
            ],
          ),

          SizedBox(height: size.height*.03,),
          
          Center(child: InkWell(
              onTap: (){
                if (kDebugMode) {
                  print("More Miles tapped");
                }
              },
              child: reusableText("How to get more miles?",color: AppColors.primaryColor,fontSize: 17,fontWeight: FontWeight.w500))),

        ],
      )
    );
  }
}
