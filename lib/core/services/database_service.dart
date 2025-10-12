
abstract class DatabaseService {
  // abstraction of database consumer'rapper'
  Future<void> saveData({
    required String path,
    required Map<String, dynamic> data,
    String? documenId,
  });
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documenId,
  });
  Future<bool> checkIfDataExist({
    required String path,
    required String documenId,
  });
}
