import 'package:studentsaver_app/core/data/firebase/abstract/firebase_data_service.dart';
import 'package:studentsaver_app/core/data/firebase/concrete/firebase_data_manager.dart';
import 'package:studentsaver_app/models/Problem.dart';
import 'package:studentsaver_app/presentation/add_problem/add_problem_view_model/repositories/IAdd_problem_repository.dart';

class AddProblemRepository extends IAddProblemRepository {
  final FirebaseDataService _dataService;
  AddProblemRepository({FirebaseDataService? service}) : _dataService = service ?? FirebaseDataManager();

  @override
  Future<bool> addProblem(Problem problem) async {
    final bool isSuccess = await _dataService.addDataToFirestore(problem.toJson());

    return isSuccess;
  }
}
