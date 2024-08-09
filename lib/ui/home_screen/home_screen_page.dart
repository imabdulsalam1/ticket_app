import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  reusableText("Good Morning",fontWeight: FontWeight.w500,fontSize: 17,color: AppColors.homeScreenTxtColor,),
                  reusableText("Book Tickets",fontWeight: FontWeight.w500,fontSize: 26,color: AppColors.homeScreenTxtColor,),
                ],),
                Container(color: Colors.black,width: 50,height: 50,)
              ],),

              Row(children: [
                Text("Text 1"),
                Text("Text 1"),
              ],),

            ],),
          )
        ],),

    );
  }
}
