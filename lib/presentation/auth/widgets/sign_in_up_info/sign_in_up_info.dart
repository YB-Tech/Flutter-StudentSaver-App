import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SignInUpInfo extends StatelessWidget {
  final String text;
  final bool isSignIn;
  const SignInUpInfo({Key? key, required this.text, required this.isSignIn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Container(
      margin: EdgeInsets.only(right: width * 5 / 100),
      width: width,
      height: height * 8 / 100,
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$text ",
            style: context.textTheme.headline5?.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          Text(
            isSignIn ? "Create" : "",
            style: context.textTheme.headline5?.copyWith(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 17,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
