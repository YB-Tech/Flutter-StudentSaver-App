import 'package:json_annotation/json_annotation.dart';

import 'School.dart';
import '../products/enums/user_state_enum.dart';

part 'User.g.dart';

@JsonSerializable()
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

  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
