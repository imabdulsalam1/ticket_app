import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/json/hotel_json.dart';
import 'package:ticket_app/json/ticket_json.dart';
import 'package:ticket_app/ui/pages/hotels/view_hotel_widget.dart';
import 'package:ticket_app/ui/pages/tickets/ticket.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';
import 'package:ticket_app/utils/img_path/img_path.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.06,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText(
                            "Good Morning",
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: size.height * .001,
                          ),
                          reusableText(
                            "Book Tickets",
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: AppColors.homeScreenTxtColor,
                          )
                        ]),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage(
                                ImgPath.logo,
                              ),
                            )))
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // Search Bar
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.homeScreenSearchBarColor),
                    child: Row(children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: AppColors.homeScreenSearchIconColor,
                      ),
                      reusableText("Search")
                    ])),
                SizedBox(
                  height: size.height * 0.04,
                ),
                // Ticket Section
                Column(
                  children: [
                    doubleText(context, "Upcoming Flights", "View all", () {
                      Navigator.pushNamed(context, "ShowAllTickets");
                    }),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: ticketList
                              .take(2)
                              .map((singleTicket) => TicketsViewWidget(
                                    ticket: singleTicket,
                                  ))
                              .toList()),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                // Hotels Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    doubleText(context, "Hotels", "View all", () {
                      Navigator.pushNamed(context, "HotelPage");
                    }),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: hotelList
                              .take(2)
                              .map((singleHotel) => hotelWidget(
                            context,
                            hotel: singleHotel,
                          ))
                              .toList()),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
