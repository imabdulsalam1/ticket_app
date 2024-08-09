import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/ui/profile_page/profile_page.dart';
import 'package:ticket_app/ui/search_page/search_page.dart';
import 'package:ticket_app/ui/tickets_page/tickets_page.dart';
import 'package:ticket_app/utils/app_colors.dart';

import '../home_screen/home_screen_page.dart';

class DashboardBottomBar extends StatefulWidget {
  const DashboardBottomBar({super.key});

  @override
  State<DashboardBottomBar> createState() => _DashboardBottomBar();
}

class _DashboardBottomBar extends State<DashboardBottomBar> {

  final appScreens = [
    const HomeScreenPage(),
    const SearchPage(),
    const TicketsPage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Center(child: Text("My Tickets",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600),),),
      ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: AppColors.unselectedItemColor,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile",
          ),
        ],
      ) ,
    );
  }
}

