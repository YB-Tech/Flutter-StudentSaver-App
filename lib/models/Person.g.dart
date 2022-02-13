// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      email: json['email'] as String,
      password: json['password'] as String,
      nickname: json['nickname'] as String,
      userState: $enumDecode(_$UserStateEnumMap, json['userState']),
      school: School.fromJson(json['school'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
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
