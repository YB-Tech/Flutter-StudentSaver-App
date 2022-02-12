import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleHello extends StatelessWidget {
  const TitleHello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello",
      style: context.textTheme.headline1?.copyWith(
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}
