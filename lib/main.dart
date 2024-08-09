import 'package:flutter/material.dart';
import 'package:ticket_app/ui/dashboard/dashboard_bottom_bar.dart';
import 'package:ticket_app/ui/home_screen/home_screen_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardBottomBar(),

      routes:
      {
        "DashboardBottomBar": (context) => const DashboardBottomBar(),
        "HomeScreenPage": (context) => const HomeScreenPage(),

      },
    );
  }
}
