import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/color_constants.dart';
import '../../../products/enums/problem_level_enum.dart';

typedef OptionCallBack = void Function(ProblemLevelEnum);

class OptionContainer extends StatelessWidget {
  OptionContainer({Key? key, required this.isSelected, required this.optionEnum, required this.optionCallBack}) : super(key: key);
  final bool isSelected;
  final ProblemLevelEnum optionEnum;
  final ColorConstants colorConstants = ColorConstants.instance;
  final OptionCallBack optionCallBack;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => optionCallBack(optionEnum),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: context.lowBorderRadius / 3,
          color: isSelected ? colorConstants.segmentSelectedBg : colorConstants.segmentUnselectedBg,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            optionEnum.name,
            style: context.textTheme.headline6?.copyWith(
              color: isSelected ? colorConstants.segmentSelectedFg : colorConstants.segmentUnselectedFg,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
