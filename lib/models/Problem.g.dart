// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Problem _$ProblemFromJson(Map<String, dynamic> json) => Problem(
      levelEnum: $enumDecode(_$ProblemLevelEnumEnumMap, json['levelEnum']),
      school: School.fromJson(json['school'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      fromWho: Person.fromJson(json['fromWho'] as Map<String, dynamic>),
      image: json['image'] as String,
    );

Map<String, dynamic> _$ProblemToJson(Problem instance) => <String, dynamic>{
      'levelEnum': _$ProblemLevelEnumEnumMap[instance.levelEnum],
      'school': instance.school,
      'date': instance.date.toIso8601String(),
      'fromWho': instance.fromWho,
      'image': instance.image,
    };

const _$ProblemLevelEnumEnumMap = {
  ProblemLevelEnum.HIGH: 'HIGH',
  ProblemLevelEnum.NORMAL: 'NORMAL',
  ProblemLevelEnum.LOW: 'LOW',
};
