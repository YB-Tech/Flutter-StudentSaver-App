import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/extensions/problem_level_enum_extension.dart';
import '../../../products/enums/problem_level_enum.dart';

class ProblemLevelCard extends StatelessWidget {
  const ProblemLevelCard({Key? key, required this.level}) : super(key: key);
  final ProblemLevelEnum level;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _containerBoxDecoration(context),
      child: Padding(
        padding: context.paddingLow,
        child: _levelNameText(context),
      ),
    );
  }

  BoxDecoration _containerBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: level.toBgColor,
      borderRadius: context.lowBorderRadius,
    );
  }

  Text _levelNameText(BuildContext context) {
    return Text(
      level.name,
      style: context.textTheme.headline6?.copyWith(
        color: level.toFgColor,
      ),
    );
  }
}
