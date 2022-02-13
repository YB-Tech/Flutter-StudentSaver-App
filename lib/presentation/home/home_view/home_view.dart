import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import '../../../core/init/navigation/navigation_bloc/navigation_cubit.dart';
import '../../add_problem/add_problem_view/add_problem_view.dart';
import '../../my_school/my_school_view/my_school_view.dart';
import '../../settings/settings_view/settings_view.dart';
import '../../../products/enums/nav_bar_item_enum.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/constants/image_constants.dart';

import '../widgets/option_container.dart';
import '../widgets/problem_card.dart';
import '../../../products/enums/problem_level_enum.dart';
import '../../../core/constants/string_constants.dart';
import '../../../models/Problem.dart';

part '../extensions/home_view_instance_extension.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Container(
        decoration: BoxDecoration(
          color: colorConstants.homeViewBg,
          borderRadius: BorderRadius.only(
            topLeft: context.lowRadius * 5,
            topRight: context.lowRadius * 5,
          ),
        ),
        child: SizedBox(
          width: context.width,
          child: Padding(
            padding: context.paddingNormal,
            child: BlocBuilder<NavigationCubit, NavigationState>(
              builder: (context, state) {
                if (state.navBarItem == NavBarItem.HOME) {
                  return _homeViewSizedBox(context);
                } else if (state.navBarItem == NavBarItem.MY_SCHOOL) {
                  return const MySchoolView();
                } else if (state.navBarItem == NavBarItem.ADD_PROBLEM) {
                  return AddProblemView();
                } else {
                  return const SettingsView();
                }
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _homeViewSizedBox(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _optionContainers(),
          ),
        ),
        Expanded(
            flex: 8,
            child: ListView.builder(
              itemCount: 4,
              padding: context.paddingLow,
              itemBuilder: (context, index) => ProblemCard(problem: Problem.dummyProblem),
            )),
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text(stringConstants.appBarTitle),
      actions: [
        _notificationIconPadding(context),
      ],
    );
  }

  Padding _notificationIconPadding(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: const Icon(Icons.notifications_outlined),
    );
  }

  BlocBuilder _bottomNavigationBar(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          items: [
            BottomNavigationBarItem(icon: const Icon(Icons.home), label: stringConstants.homeText),
            BottomNavigationBarItem(icon: const Icon(Icons.school), label: stringConstants.mySchoolText),
            BottomNavigationBarItem(icon: const Icon(Icons.add), label: stringConstants.addProblemText),
            BottomNavigationBarItem(icon: const Icon(Icons.settings), label: stringConstants.settingsText),
          ],
          onTap: (index) {
            if (index == 0) {
              BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavBarItem.HOME);
            } else if (index == 1) {
              BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavBarItem.MY_SCHOOL);
            } else if (index == 2) {
              BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavBarItem.ADD_PROBLEM);
            } else {
              BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavBarItem.SETTINGS);
            }
          },
        );
      },
    );
  }

  List<OptionContainer> _optionContainers() {
    return [
      OptionContainer(
        isSelected: true,
        optionEnum: ProblemLevelEnum.HIGH,
        optionCallBack: (callBackEnum) {},
      ),
      OptionContainer(
        isSelected: false,
        optionEnum: ProblemLevelEnum.NORMAL,
        optionCallBack: (callBackEnum) {},
      ),
      OptionContainer(
        isSelected: false,
        optionEnum: ProblemLevelEnum.LOW,
        optionCallBack: (callBackEnum) {},
      ),
    ];
  }
}
