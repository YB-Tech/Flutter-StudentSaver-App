// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as String,
      password: json['password'] as String,
      nickname: json['nickname'] as String,
      userState: $enumDecode(_$UserStateEnumMap, json['userState']),
      school: School.fromJson(json['school'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'nickname': instance.nickname,
      'userState': _$UserStateEnumMap[instance.userState],
      'school': instance.school,
    };

const _$UserStateEnumMap = {
  UserState.STUDENT: 'STUDENT',
  UserState.SAVER: 'SAVER',
};
