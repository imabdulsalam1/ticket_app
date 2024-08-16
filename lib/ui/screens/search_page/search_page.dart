import 'package:flutter/material.dart';
import 'package:ticket_app/ui/pages/flights/upcoming_flight_widgets.dart';
import 'package:ticket_app/ui/screens/search_page/search_widgets/all_search_screen_widgets.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';
import 'package:ticket_app/utils/img_path/img_path.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          reusableText("What are\nyou looking for?",
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: AppColors.homeScreenTxtColor),
          tabs(context, "Airline Tickets", "Hotels",),
          SizedBox(
            height: size.height * 0.025,
          ),
          iconWithText(context, "Departure", Icons.flight_takeoff_rounded),
          SizedBox(
            height: size.height * 0.02,
          ),
          iconWithText(context, "Arrival", Icons.flight_land_rounded),
          SizedBox(
            height: size.height * 0.02,
          ),
          findTickets(context),
          SizedBox(
            height: size.height * 0.04,
          ),
          doubleText(context, "Upcoming Flights", "View All", () {
            Navigator.pushNamed(context, "UpcomingFlightsPage");
          }),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                flightCardOne(
                    context,
                    "20% discount on the early booking of this flight.",
                    ImgPath.cityView),
                upComingFlightCard(context)
              ]),
        ],
      ),
    );
  }
}
