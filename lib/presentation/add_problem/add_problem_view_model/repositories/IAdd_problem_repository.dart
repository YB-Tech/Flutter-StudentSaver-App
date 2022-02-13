import 'package:studentsaver_app/models/Problem.dart';

abstract class IAddProblemRepository {
  Future<void> addProblem(Problem problem);
}
