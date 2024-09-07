// abstract class BottomNavEvent{}
//
// class BottomNavBarInitial extends BottomNavEvent{}
//
// class BottomNavBarSelected extends BottomNavEvent{
//   final int selectedIndex;
//   BottomNavBarSelected(this.selectedIndex);
//
// }

abstract class BottomNavEvent {}

class OnItemTapped extends BottomNavEvent {
  final int index;

  OnItemTapped(this.index);
}