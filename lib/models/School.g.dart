// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'School.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

School _$SchoolFromJson(Map<String, dynamic> json) => School(
      name: json['name'] as String,
      point: (json['point'] as num).toDouble(),
    );

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'name': instance.name,
      'point': instance.point,
    };
