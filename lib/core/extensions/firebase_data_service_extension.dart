import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:studentsaver_app/core/constants/firebase_constants.dart';
import 'package:studentsaver_app/core/data/firebase/abstract/firebase_data_service.dart';

extension FirebaseDataServiceExtension on FirebaseDataService {
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  FirebaseConstants get firebaseConstants => FirebaseConstants.instance;
}
