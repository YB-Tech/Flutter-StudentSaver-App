import 'package:json_annotation/json_annotation.dart';
import '../core/constants/image_constants.dart';
import 'School.dart';
import 'Person.dart';
import '../products/enums/problem_level_enum.dart';

part 'Problem.g.dart';

@JsonSerializable()
class Problem {
  final ProblemLevelEnum levelEnum;
  final School school;
  final DateTime date;
  final Person fromWho;
  final String image;
  Problem({
    required this.levelEnum,
    required this.school,
    required this.date,
    required this.fromWho,
    required this.image,
  });

  static final Problem dummyProblem = Problem(
    levelEnum: ProblemLevelEnum.HIGH,
    school: School.dummySchool,
    date: DateTime.now(),
    fromWho: Person.dummyUser,
    image: ImageConstants.instance.dummyImage,
  );

  Map<String, dynamic> toJson() => _$ProblemToJson(this);

  factory Problem.fromJson(Map<String, dynamic> json) =>
      _$ProblemFromJson(json);
}
