import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentsaver_app/presentation/add_problem/add_problem_view/add_problem_view.dart';
import 'package:studentsaver_app/presentation/auth/login/login_view/login_view.dart';
import 'presentation/auth/register/register_view/register_view.dart';
import 'core/init/navigation/navigation_bloc/navigation_cubit.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'package:kartal/kartal.dart';
import 'core/constants/color_constants.dart';
import 'presentation/home/home_view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

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
        theme: _themeData(context),
        home: LoginView(),
      ),
    );
  }

  ThemeData _themeData(BuildContext context) {
    return ThemeData(
        appBarTheme: _appBarTheme(context),
        scaffoldBackgroundColor: ColorConstants.instance.scaffoldBgColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: ColorConstants.instance.segmentSelectedBg,
          unselectedItemColor: ColorConstants.instance.segmentUnselectedBg,
        ));
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
