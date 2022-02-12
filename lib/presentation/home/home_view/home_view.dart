import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
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
          child: Column(
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
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
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

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'My School'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
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
