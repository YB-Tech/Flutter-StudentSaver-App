class StringConstants {
  static StringConstants? _instance;
  static StringConstants get instance => _instance ??= StringConstants._init();
  StringConstants._init();

  String get appBarTitle => 'StudentSaverApp';
  String get highText => 'HIGH';
  String get normalText => 'NORMAL';
  String get lowText => 'LOW';
}
