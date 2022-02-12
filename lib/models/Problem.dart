import '../core/constants/image_constants.dart';
import 'School.dart';
import 'User.dart';
import '../products/enums/problem_level_enum.dart';

class Problem {
  final ProblemLevelEnum levelEnum;
  final School school;
  final DateTime date;
  final User fromWho;
  final String image;
  Problem({
    required this.levelEnum,
    required this.school,
    required this.date,
    required this.fromWho,
    required this.image,
  });

  static final Problem dummyProblem = Problem(
      levelEnum: ProblemLevelEnum.LOW,
      school: School.dummySchool,
      date: DateTime.now(),
      fromWho: User.dummyUser,
      image: ImageConstants.instance.dummyImage);
}
