import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentsaver_app/products/enums/nav_bar_item_enum.dart';

part './navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(navBarItem: NavBarItem.HOME, index: 0));

  void getNavBarItem(NavBarItem item) {
    switch (item) {
      case NavBarItem.HOME:
        emit(const NavigationState(navBarItem: NavBarItem.HOME, index: 0));
        break;
      case NavBarItem.MY_SCHOOL:
        emit(const NavigationState(navBarItem: NavBarItem.MY_SCHOOL, index: 1));
        break;
      case NavBarItem.SETTINGS:
        emit(const NavigationState(navBarItem: NavBarItem.SETTINGS, index: 2));
        break;
    }
  }
}
