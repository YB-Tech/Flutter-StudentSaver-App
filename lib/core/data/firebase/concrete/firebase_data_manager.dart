import 'package:studentsaver_app/core/data/firebase/abstract/firebase_data_service.dart';
import 'package:studentsaver_app/core/extensions/firebase_data_service_extension.dart';

class FirebaseDataManager extends FirebaseDataService {
  @override
  Future<bool> addDataToFirestore(Map<String, dynamic> json) async {
    firebaseFirestore.collection(firebaseConstants.PROBLEM_COL).add(json).then((value) {
      return true;
      // ignore: argument_type_not_assignable_to_error_handler
    }).catchError(() {
      return true;
    });
    return false;
  }
}
