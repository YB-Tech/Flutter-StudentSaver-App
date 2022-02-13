import 'package:json_annotation/json_annotation.dart';

import 'School.dart';
import '../products/enums/user_state_enum.dart';

part 'Person.g.dart';

@JsonSerializable()
class Person {
  final String email;
  final String password;
  final String nickname;
  final UserState userState;
  final School school;
  Person({
    required this.email,
    required this.password,
    required this.nickname,
    required this.userState,
    required this.school,
  });

  static final Person dummyUser = Person(
    email: 'email@email.com',
    password: '12345',
    nickname: 'nicname1',
    userState: UserState.SAVER,
    school: School.dummySchool,
  );

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
