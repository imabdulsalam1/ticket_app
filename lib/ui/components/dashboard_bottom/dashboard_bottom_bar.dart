import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/ui/screens/search_page/search_page.dart';
import 'package:ticket_app/ui/screens/tickets_screen/tickets_screen.dart';
import 'package:ticket_app/utils/app_colors.dart';
import '../../screens/home_screen/home_screen_page.dart';
import '../../screens/profile_page/profile_screen.dart';

class DashboardBottomBar extends StatelessWidget {
  DashboardBottomBar({super.key});


  final appScreens = [
    const HomeScreenPage(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  // dependency injection
  final BottomNavController controller = Get.put(BottomNavController());


  @override
  Widget build(BuildContext context) {
    print("Tab ${controller.selectedIndex.value}");
    return Obx((){
      return Scaffold(
        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.onItemTapped,
          currentIndex: controller.selectedIndex.value,
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
        ),
      );
    });
  }
}
