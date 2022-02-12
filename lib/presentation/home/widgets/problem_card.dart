import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/presentation/settings/settings_view/settings_view.dart';
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
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsView())),
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
                        _problemSchoolNameText(context),
                        _dateText(context),
                      ],
                    ),
                  ),
                  Expanded(flex: 4, child: _problemImage()),
                  Expanded(
                    child: Row(
                      children: [
                        const Spacer(),
                        ProblemLevelCard(level: problem.levelEnum),
                        const Spacer(flex: 4),
                        _fromWhoText(context),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Text _dateText(BuildContext context) {
    return Text(
      DateFormat('dd/MM/yyyy').format(problem.date),
      style: context.textTheme.titleMedium,
    );
  }

  Text _problemSchoolNameText(BuildContext context) {
    return Text(
      problem.school.name,
      style: context.textTheme.headline5,
    );
  }

  Image _problemImage() {
    return Image.asset(
      problem.image,
      fit: BoxFit.contain,
    );
  }

  Text _fromWhoText(BuildContext context) {
    return Text(
      problem.fromWho.nickname,
      style: context.textTheme.headline5,
    );
  }
}
