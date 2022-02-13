import 'package:studentsaver_app/models/Problem.dart';

abstract class IAddProblemRepository {
  Future<bool> addProblem(Problem problem);
}
