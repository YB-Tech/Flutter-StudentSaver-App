class School {
  final String name;
  final double point;
  School({required this.name, required this.point});

  static final School dummySchool = School(
    name: 'School 1',
    point: 4.1,
  );
}
