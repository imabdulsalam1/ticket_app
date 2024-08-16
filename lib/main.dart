import 'package:flutter/material.dart';
import 'package:ticket_app/ui/components/dashboard_bottom/dashboard_bottom_bar.dart';
import 'package:ticket_app/ui/pages/flights/upcoming_flights_page.dart';
import 'package:ticket_app/ui/pages/hotels/hotel_page.dart';
import 'package:ticket_app/ui/pages/tickets/show_all_tickets_page.dart';
import 'package:ticket_app/ui/screens/home_screen/home_screen_page.dart';
import 'package:ticket_app/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Tickets',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.appBgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardBottomBar(),
      routes: {
        "DashboardBottomBar": (context) => const DashboardBottomBar(),
        "HomeScreenPage": (context) => const HomeScreenPage(),
        "ShowAllTickets": (context) => const ShowAllTickets(),
        "HotelPage": (context) => const HotelPage(),
        "UpcomingFlightsPage": (context) => const UpcomingFlightsPage(),
      },
    );

  }
}
