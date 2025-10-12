

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub_dashboard/core/services/database_service.dart';

class FirebaseFirestorService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  @override
  Future<void> saveData({  
    required String path,
    required Map<String, dynamic> data,
    String? documenId,
  }) async {
    if (documenId == null) {
      await firestore.collection(path).add(data);
    } else {
      await firestore.collection(path).doc(documenId).set(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documenId,
  }) async {
    var requist = await firestore.collection(path).doc(documenId).get();
    return requist.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDataExist({
    required String path,
    required String documenId,
  }) {
    var doc = firestore.collection(path).doc(documenId).get();
    return doc.then((value) => value.exists);
  }
}
