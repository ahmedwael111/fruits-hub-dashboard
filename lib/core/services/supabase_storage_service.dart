import 'dart:io';

import 'package:fruits_hub_dashboard/constants.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:path/path.dart' as b;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStorageService implements StorageServices {
  static late Supabase _supabase; // singleton instance
  initSupabase() async {
    _supabase = await Supabase.initialize(
      // Initialize the Supabase client
      url: kSupabaseUrl,
      anonKey: kSupabaseAnonKey,
    );
  }

  static creatBuckets(String buctketName) async {
    await _supabase.client.storage.createBucket(buctketName);
  }

  @override
  Future<String> uploadImage(String path, File file) {
    String fileName = b.basename(file.path);
    String fileExtension = b.extension(file.path);
    var result = _supabase.client.storage
        .from(path)
        .upload('$fileName$fileExtension', file);
    return result;
  }
}
