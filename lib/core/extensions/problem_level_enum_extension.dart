import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import '../../products/enums/problem_level_enum.dart';

extension ProblemLevelEnumExtension on ProblemLevelEnum {
  Color get toBgColor {
    switch (this) {
      case ProblemLevelEnum.HIGH:
        return ColorConstants.instance.highLevelBg;
      case ProblemLevelEnum.NORMAL:
        return ColorConstants.instance.normalLevelBg;
      case ProblemLevelEnum.LOW:
        return ColorConstants.instance.lowLevelBg;
    }
  }

  Color get toFgColor {
    switch (this) {
      case ProblemLevelEnum.HIGH:
        return ColorConstants.instance.highLevelFg;
      case ProblemLevelEnum.NORMAL:
        return ColorConstants.instance.normalLevelFg;
      case ProblemLevelEnum.LOW:
        return ColorConstants.instance.lowLevelFg;
    }
  }
}
