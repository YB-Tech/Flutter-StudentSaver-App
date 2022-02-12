import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleInfo extends StatelessWidget {
  final String title;
  final double fontSize;
  const TitleInfo({Key? key, required this.title, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.headline5?.copyWith(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: fontSize,
      ),
    );
  }
}
