import 'package:studentsaver_app/models/Problem.dart';

abstract class AddProblemState {
  AddProblemState();
}

class AddProblemInitialState extends AddProblemState {
  AddProblemInitialState();
}

class AddProblemLoadingState extends AddProblemState {
  AddProblemLoadingState();
}

class AddProblemSuccessState extends AddProblemState {
  Problem? problem;
  AddProblemSuccessState({this.problem});
}

class AddProblemErrorState extends AddProblemState {
  String? error;
  AddProblemErrorState({this.error});
}
