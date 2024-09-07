import 'package:bloc/bloc.dart';
import 'package:ticket_app/bloc/bottom_nav_event.dart';
import 'package:ticket_app/bloc/bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavBarInitial()) {
    on<OnItemTapped>((event, emit) {
      emit(BottomNavBarSelected(event.index));
    });
  }
}
