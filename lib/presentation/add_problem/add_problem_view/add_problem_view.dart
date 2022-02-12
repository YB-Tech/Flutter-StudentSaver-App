import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/core/constants/color_constants.dart';
import 'package:studentsaver_app/presentation/auth/widgets/buttons/sign_in_up_button.dart';
import 'package:studentsaver_app/products/enums/problem_level_enum.dart';
import 'package:studentsaver_app/products/widgets/text_field.dart';

class AddProblemView extends StatelessWidget {
  const AddProblemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Expanded(
          child: Placeholder(),
        ),
        const MyTextField(hintText: 'Problem Description', preffixIcon: Icons.description, hasSuffixIcon: false),
        Padding(
          padding: context.paddingMedium,
          child: _dropdownButtonsRow(context),
        ),

        //todo: set width for text wrap, dynamic icon, extract onClick method
        Padding(
          padding: EdgeInsets.only(bottom: context.normalValue),
          child: const SignInUpButton(text: 'Upload \n Image'),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: context.normalBorderRadius,
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.orange,
                Color.fromARGB(255, 250, 203, 133),
              ],
            ),
          ),
          child: _addProblemCircleAvatar(context),
        ),
      ],
    );
  }

  CircleAvatar _addProblemCircleAvatar(BuildContext context) {
    return CircleAvatar(
      radius: context.mediumValue,
      backgroundColor: ColorConstants.instance.transparentColor,
      child: _addProblemIcon(context),
    );
  }

  Icon _addProblemIcon(BuildContext context) {
    return Icon(
      Icons.add,
      color: ColorConstants.instance.homeViewBg,
      size: context.mediumValue * 1.4,
    );
  }

  Row _dropdownButtonsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _schoolDropdownButton(context),
        Spacer(),
        _levelsDropdownButton(context),
      ],
    );
  }

  DropdownButton<ProblemLevelEnum> _levelsDropdownButton(BuildContext context) {
    return DropdownButton<ProblemLevelEnum>(
      value: ProblemLevelEnum.HIGH,
      items: [
        DropdownMenuItem(value: ProblemLevelEnum.HIGH, child: Text(ProblemLevelEnum.HIGH.name)),
        DropdownMenuItem(value: ProblemLevelEnum.NORMAL, child: Text(ProblemLevelEnum.NORMAL.name)),
        DropdownMenuItem(value: ProblemLevelEnum.LOW, child: Text(ProblemLevelEnum.LOW.name)),
      ],
      style: context.textTheme.headline6,
      onChanged: (data) {},
    );
  }

  DropdownButton<String> _schoolDropdownButton(BuildContext context) {
    return DropdownButton<String>(
      value: 'A',
      items: const [
        DropdownMenuItem(value: 'A', child: Text('A SCHOOL')),
        DropdownMenuItem(value: 'B', child: Text('B SCHOOL')),
        DropdownMenuItem(value: 'C', child: Text('C SCHOOL')),
      ],
      style: context.textTheme.headline6,
      onChanged: (data) {},
    );
  }
}
