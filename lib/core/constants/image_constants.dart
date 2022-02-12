import '../extensions/image_extension.dart';

class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance => _instance ??= ImageConstants._init();
  ImageConstants._init();

  String get baseImagePath => 'assets/images';
  String get dummyImage => '$baseImagePath/dummy_image'.toJpeg;
}
