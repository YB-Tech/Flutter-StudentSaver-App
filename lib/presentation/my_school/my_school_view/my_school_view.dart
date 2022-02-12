import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../models/Problem.dart';
import '../../home/widgets/problem_card.dart';

class MySchoolView extends StatelessWidget {
  const MySchoolView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = context.height;
    double width = context.width;
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _titleInfoContainer(context, height, width),
          _listViewProblems(width, height, context)
        ],
      ),
    );
  }

  Expanded _listViewProblems(
      double width, double height, BuildContext context) {
    return Expanded(
      child: Container(
        width: width,
        height: height * 0.61,
        child: ListView.builder(
          itemCount: 4,
          padding: context.paddingLow,
          itemBuilder: (context, index) =>
              ProblemCard(problem: Problem.dummyProblem),
        ),
      ),
    );
  }

  Container _titleInfoContainer(
      BuildContext context, double height, double width) {
    return Container(
      height: height * 0.17,
      width: width,
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: width * 0.05),
            width: width * 0.6,
            height: height * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Muzaffer Çil Anadolu Lisesi',
                  style: context.textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '3.9',
                  style: context.textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
