class FirebaseConstants {
  static FirebaseConstants? _instance;
  static FirebaseConstants get instance => _instance ??= FirebaseConstants._init();
  FirebaseConstants._init();

  String get PROBLEM_COL => 'problems';
}
