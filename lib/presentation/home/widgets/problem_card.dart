import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../models/Problem.dart';
import 'package:intl/intl.dart';
import 'problem_level_card.dart';

class ProblemCard extends StatelessWidget {
  const ProblemCard({Key? key, required this.problem}) : super(key: key);
  final Problem problem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: Container(
        height: context.height / 2,
        decoration: BoxDecoration(borderRadius: context.lowBorderRadius * 2),
        child: Card(
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        problem.school.name,
                        style: context.textTheme.headline5,
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(problem.date),
                        style: context.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Image.asset(
                      problem.image,
                      fit: BoxFit.contain,
                    )),
                Expanded(
                  child: Row(
                    children: [
                      const Spacer(),
                      ProblemLevelCard(level: problem.levelEnum),
                      const Spacer(flex: 4),
                      Text(
                        problem.fromWho.nickname,
                        style: context.textTheme.headline5,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
