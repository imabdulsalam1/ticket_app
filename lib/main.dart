import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ticket_app/app_routes/app_routes.dart';
import 'package:ticket_app/ui/components/dashboard_bottom/dashboard_bottom_bar.dart';
import 'package:ticket_app/ui/pages/flights/upcoming_flights_page.dart';
import 'package:ticket_app/ui/pages/hotels/grid_hotels_page.dart';
import 'package:ticket_app/ui/pages/hotels/hotel_details.dart';
import 'package:ticket_app/ui/pages/tickets/show_all_tickets_page.dart';
import 'package:ticket_app/ui/screens/profile_page/profile_screen.dart';
import 'package:ticket_app/ui/screens/tickets_screen/tickets_screen.dart';
import 'package:ticket_app/utils/app_colors.dart';

void main() {
  runApp(
  const ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Your Tickets',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: AppColors.appBgColor),
        scaffoldBackgroundColor: AppColors.appBgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.homePage,
      routes: {
        AppRoutes.homePage: (context) => DashboardBottomBar(),
        AppRoutes.allTickets: (context) => const ShowAllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.hotelPage: (context) => const GridHotelPage(),
        AppRoutes.upcomingFlights: (context) => const UpcomingFlightsPage(),
        AppRoutes.hotelDetail: (context) => const HotelDetails(),
        AppRoutes.profileScreen: (context) => const ProfileScreen(),

      },
    );
  }
}