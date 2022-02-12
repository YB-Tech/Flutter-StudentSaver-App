import 'package:flutter/material.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants get instance => _instance ??= ColorConstants._init();
  ColorConstants._init();

  Color get transparentColor => Colors.transparent;
  Color get grayColor => Colors.black54;
  Color get scaffoldBgColor => Colors.white.withOpacity(0.94);
  Color get homeViewBg => Colors.white;
  Color get segmentSelectedBg => Colors.orange;
  Color get segmentSelectedFg => Colors.white;
  Color get segmentUnselectedBg => Colors.black12;
  Color get segmentUnselectedFg => Colors.black54;
  Color get highLevelFg => const Color.fromRGBO(221, 72, 37, 1);
  Color get highLevelBg => const Color.fromRGBO(250, 236, 235, 1);
  Color get normalLevelFg => const Color.fromRGBO(234, 168, 87, 1);
  Color get normalLevelBg => const Color.fromRGBO(253, 247, 223, 1);
  Color get lowLevelFg => const Color.fromARGB(255, 58, 209, 154);
  Color get lowLevelBg => const Color.fromARGB(255, 202, 251, 239);
}
