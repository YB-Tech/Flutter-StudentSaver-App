import 'School.dart';
import '../products/enums/user_state_enum.dart';

class User {
  final String email;
  final String password;
  final String nickname;
  final UserState userState;
  final School school;
  User({
    required this.email,
    required this.password,
    required this.nickname,
    required this.userState,
    required this.school,
  });

  static final User dummyUser = User(
    email: 'email@email.com',
    password: '12345',
    nickname: 'nicname1',
    userState: UserState.SAVER,
    school: School.dummySchool,
  );
}
