import 'package:studentsaver_app/models/Person.dart';

abstract class FireBaseAuthService {
  Future<Person> firebaseRegister(Person user);
  Future<Person> firebaseSignIn(Person user);
}
