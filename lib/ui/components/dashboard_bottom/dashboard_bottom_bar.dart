import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/bloc/bottom_nav_bloc.dart';
import 'package:ticket_app/bloc/bottom_nav_event.dart';
import 'package:ticket_app/bloc/bottom_nav_state.dart';
import 'package:ticket_app/ui/screens/home_screen/home_screen_page.dart';
import 'package:ticket_app/ui/screens/profile_page/profile_screen.dart';
import 'package:ticket_app/ui/screens/search_page/search_page.dart';
import 'package:ticket_app/ui/screens/tickets_screen/tickets_screen.dart';
import 'package:ticket_app/utils/app_colors.dart';

class DashboardBottomBar extends StatelessWidget {
  DashboardBottomBar({super.key});

  final appScreens = [
    const HomeScreenPage(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  // dependency injection
  // final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    // riverpod
    // var selectedIndex = ref.watch(bottomNavBarNotifierProvider);
    return BlocBuilder < BottomNavBloc, BottomNavState > (builder: (context, state) {

      var selectedIndex = (state as BottomNavBarSelected).selectedIndex;

      return Scaffold(
        body: appScreens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            // for bloc use context.read
            context.read <BottomNavBloc> ().add(OnItemTapped(index));
          },
          // for riverpod use ref.watch
          // onTap: ref.watch(bottomNavBarNotifierProvider.notifier).onItemTapped,
          currentIndex: selectedIndex,
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
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_info_filled),
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
