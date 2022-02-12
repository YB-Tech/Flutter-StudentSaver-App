import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/init/navigation/navigation_bloc/navigation_cubit.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'package:kartal/kartal.dart';
import 'core/constants/color_constants.dart';
import 'presentation/home/home_view/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: MaterialApp(
        title: 'StudentSaver App',
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: _appBarTheme(context),
            scaffoldBackgroundColor: ColorConstants.instance.scaffoldBgColor,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: ColorConstants.instance.segmentSelectedBg,
              unselectedItemColor: ColorConstants.instance.segmentUnselectedBg,
            )),
        home: const HomeView(),
      ),
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
