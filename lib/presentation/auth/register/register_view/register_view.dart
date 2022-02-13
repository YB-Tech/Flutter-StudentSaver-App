import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/presentation/auth/widgets/buttons/sign_in_up_button.dart';
import 'package:studentsaver_app/products/widgets/text_field.dart';
import 'package:studentsaver_app/presentation/auth/widgets/titles/title_info.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 25 / 100),
        child: Container(
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    const TitleInfo(title: "Create account", fontSize: 30),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  width * 5 / 100,
                  height * 1 / 100,
                  0,
                  height * 10 / 100,
                ),
                child: Column(
                  children: [
                    const MyTextField(
                      hintText: "User Name",
                      preffixIcon: Icons.person,
                      hasSuffixIcon: false,
                    ),
                    const MyTextField(
                      hintText: "Password",
                      preffixIcon: Icons.lock,
                      hasSuffixIcon: true,
                    ),
                    const MyTextField(
                      hintText: "E-mail",
                      preffixIcon: Icons.mail,
                      hasSuffixIcon: false,
                    ),
                    const MyTextField(
                      hintText: "Mobile",
                      preffixIcon: Icons.call,
                      hasSuffixIcon: false,
                    ),
                    signInButtonContainer(width, height),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container signInButtonContainer(double width, double height) {
    return Container(
      padding: EdgeInsets.only(right: width * 5 / 100),
      width: width,
      height: height * 17 / 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SignInUpButton(
            text: "Create",
            callback: () {},
          ),
        ],
      ),
    );
  }
}
