import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentsaver_app/models/Problem.dart';
import 'package:studentsaver_app/presentation/add_problem/add_problem_view_model/add_problem_state.dart';

import 'repositories/IAdd_problem_repository.dart';
import 'repositories/add_problem_repository.dart';

class AddProblemCubit extends Cubit<AddProblemState> {
  final IAddProblemRepository _repository;
  AddProblemCubit({IAddProblemRepository? repository})
      : _repository = repository ?? AddProblemRepository(),
        super(AddProblemInitialState());

  Future<void> addProblem(Problem problem) async {
    emit(AddProblemLoadingState());
    bool isSuccess = await _repository.addProblem(problem);
    if (isSuccess) {
      emit(AddProblemSuccessState(problem: problem));
    } else {
      emit(AddProblemErrorState(error: 'Error when uploading problem'));
    }
  }
}
