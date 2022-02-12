import 'package:flutter/material.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'package:kartal/kartal.dart';
import 'core/constants/color_constants.dart';
import 'presentation/home/home_view/home_view.dart';

import 'presentation/auth/login/login_view/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudentSaver App',
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: _appBarTheme(context),
        scaffoldBackgroundColor: ColorConstants.instance.scaffoldBgColor,
      ),
      home: const HomeView(),
    );
  }

  AppBarTheme _appBarTheme(BuildContext context) {
    const double _elevationValue = 0;
    const double _iconSize = 32;
    final ColorConstants colorConstants = ColorConstants.instance;
    return AppBarTheme(
      backgroundColor: colorConstants.transparentColor,
      elevation: _elevationValue,
      titleTextStyle: context.textTheme.headline5?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      actionsIconTheme: IconThemeData(
        size: _iconSize,
        color: colorConstants.grayColor,
      ),
    );
  }
}
