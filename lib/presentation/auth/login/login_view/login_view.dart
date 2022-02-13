import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../widgets/buttons/sign_in_up_button.dart';
import '../../widgets/sign_in_up_info/sign_in_up_info.dart';
import '../../../../products/widgets/text_field.dart';
import '../../widgets/titles/title_hello.dart';
import '../../widgets/titles/title_info.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 15 / 100),
        child: SizedBox(
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  TitleHello(),
                  TitleInfo(title: "Sign in your account", fontSize: 25),
                ],
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
                      controller: emailController,
                      hintText: "E-mail",
                      preffixIcon: Icons.mail,
                      hasSuffixIcon: false,
                    ),
                    MyTextField(
                      controller: passController,
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
            callback: () {},
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
