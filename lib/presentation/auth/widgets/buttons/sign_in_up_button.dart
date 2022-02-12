import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SignInUpButton extends StatelessWidget {
  final String text;
  const SignInUpButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Container(
      width: width * 50 / 100,
      height: height * 10 / 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: width * 3 / 100),
            child: Text(
              text,
              style: context.textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              width: width * 14 / 100,
              height: height * 5.5 / 100,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.orange,
                      Color.fromARGB(255, 250, 203, 133),
                    ]),
              ),
              child: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
