import 'package:studentsaver_app/core/data/firebase/abstract/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../models/Person.dart';

class FirebaseAuthManager extends FireBaseAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Future<Person> firebaseRegister(Person person) async {
    await auth.createUserWithEmailAndPassword(
      email: person.email,
      password: person.password,
    );
    return person;
  }

  @override
  Future<Person> firebaseSignIn(Person person) {
    throw UnimplementedError();
  }
}
