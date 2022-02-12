import 'package:flutter/material.dart';
import 'package:studentsaver_app/core/init/navigation/navigation_route.dart';
import 'package:studentsaver_app/core/init/navigation/navigation_service.dart';

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
      home: const LoginView(),
    );
  }
}
