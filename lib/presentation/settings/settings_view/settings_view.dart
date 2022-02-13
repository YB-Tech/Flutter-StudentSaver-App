import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/presentation/auth/widgets/buttons/sign_in_up_button.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Container(
      height: height,
      child: Column(
        children: [
          _titleContainer(context),
          _signOutButton(width, height),
        ],
      ),
    );
  }

  Container _signOutButton(double width, double height) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height * 15 / 100,
      child: SignInUpButton(
        text: 'Sign Out',
        callback: () {},
      ),
    );
  }

  Container _titleContainer(BuildContext context) {
    return Container(
      child: Text(
        "SETTINGS",
        style: context.textTheme.headline5?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.orange,
        ),
      ),
    );
  }
}
