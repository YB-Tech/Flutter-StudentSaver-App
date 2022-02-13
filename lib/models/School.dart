import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'School.g.dart';

@JsonSerializable()
class School {
  final String name;
  final double point;
  School({
    required this.name,
    required this.point,
  });

  static final School dummySchool = School(
    name: 'School 1',
    point: 4.1,
  );

  Map<String, dynamic> toJson() => _$SchoolToJson(this);

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}
