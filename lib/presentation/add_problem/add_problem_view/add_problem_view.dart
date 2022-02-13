import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:studentsaver_app/core/constants/image_constants.dart';
import 'package:studentsaver_app/models/School.dart';
import 'package:studentsaver_app/models/User.dart';
import 'package:studentsaver_app/presentation/add_problem/add_problem_view_model/add_problem_bloc.dart';
import 'package:studentsaver_app/presentation/add_problem/add_problem_view_model/add_problem_state.dart';
import '../../../core/constants/color_constants.dart';
import '../../../models/Problem.dart';
import '../../auth/widgets/buttons/sign_in_up_button.dart';
import '../../../products/enums/problem_level_enum.dart';
import '../../../products/widgets/text_field.dart';

class AddProblemView extends StatelessWidget {
  AddProblemView({Key? key}) : super(key: key);
  final TextEditingController descriptionController = TextEditingController();
  School? _selectedSchool;
  ProblemLevelEnum _level = ProblemLevelEnum.HIGH;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProblemCubit(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: BlocConsumer<AddProblemCubit, AddProblemState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is AddProblemSuccessState) {
                  Problem _problem = state.problem ?? Problem.dummyProblem;
                  return Image.asset(_problem.image);
                } else {
                  return const Placeholder();
                }
              },
            ),
          ),
          MyTextField(hintText: 'Problem Description', preffixIcon: Icons.description, hasSuffixIcon: false, controller: descriptionController),
          Padding(
            padding: context.paddingMedium,
            child: _dropdownButtonsRow(context),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: context.normalValue),
            child: SignInUpButton(
              text: 'Upload \n Image',
              icon: Icons.camera_alt_outlined,
              callback: () {},
            ),
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
      ),
    );
  }

  Widget _addProblemCircleAvatar(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<AddProblemCubit>().addProblem(
            Problem(
                levelEnum: _level,
                school: _selectedSchool ?? School.dummySchool,
                date: DateTime.now(),
                fromWho: User.dummyUser,
                image: ImageConstants.instance.dummyImage),
          ),
      child: CircleAvatar(
        radius: context.mediumValue,
        backgroundColor: ColorConstants.instance.transparentColor,
        child: _addProblemIcon(context),
      ),
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
        const Spacer(),
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
      onChanged: (data) {
        _level = data ?? ProblemLevelEnum.HIGH;
      },
    );
  }

  DropdownButton<String> _schoolDropdownButton(BuildContext context) {
    return DropdownButton<String>(
      value: 'A SCHOOL',
      items: const [
        DropdownMenuItem(value: 'A SCHOOL', child: Text('A SCHOOL')),
        DropdownMenuItem(value: 'B SCHOOL', child: Text('B SCHOOL')),
        DropdownMenuItem(value: 'C SCHOOL', child: Text('C SCHOOL')),
      ],
      style: context.textTheme.headline6,
      onChanged: (data) {
        _selectedSchool = School(name: data ?? 'A SCHOOL', point: 4.4);
      },
    );
  }
}
