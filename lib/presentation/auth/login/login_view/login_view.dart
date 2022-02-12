import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/presentation/auth/widgets/buttons/sign_in_up_button.dart';
import 'package:studentsaver_app/presentation/auth/widgets/sign_in_up_info/sign_in_up_info.dart';
import 'package:studentsaver_app/products/widgets/text_field.dart';
import 'package:studentsaver_app/presentation/auth/widgets/titles/title_hello.dart';
import 'package:studentsaver_app/presentation/auth/widgets/titles/title_info.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 15 / 100),
        child: Container(
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    TitleHello(),
                    TitleInfo(title: "Sign in your account", fontSize: 25),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  width * 5 / 100,
                  height * 5 / 100,
                  0,
                  height * 10 / 100,
                ),
                child: Column(
                  children: [
                    MyTextField(
                      hintText: "User Name",
                      preffixIcon: Icons.lock,
                      hasSuffixIcon: false,
                    ),
                    MyTextField(
                      hintText: "Password",
                      preffixIcon: Icons.lock,
                      hasSuffixIcon: true,
                    ),
                    forgotYourPassword(height, width, context),
                    signInButtonContainer(width, height),
                    SignInUpInfo(text: "Don't have an account?", isSignIn: true),
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
            text: "Sign in",
          ),
        ],
      ),
    );
  }

  Padding forgotYourPassword(double height, double width, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 3 / 100, right: width * 11 / 100),
      child: Container(
        width: width,
        alignment: Alignment.bottomRight,
        child: Text(
          "Forgot your password?",
          style: context.textTheme.headline6?.copyWith(fontWeight: FontWeight.w500, color: Colors.grey[400], fontSize: 14),
        ),
      ),
    );
  }
}
