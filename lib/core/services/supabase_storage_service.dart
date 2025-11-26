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
      anonKey:
          kSupabaseAnonKey, // this is the secret supabase anon key not to be used in production
    );
  }

  static creatBuckets(String buctketName) async {
    var buckets =
        await _supabase.client.storage
            .listBuckets(); // to solve the error of create the same bucket twice , but the recommended way to create buckets from dashboard of subabase
    bool bucketExists = false;
    for (var bucket in buckets) {
      if (bucket.name == buctketName) {
        bucketExists = true;
        break;
      }
    }
    if (!bucketExists) {
      await _supabase.client.storage.createBucket(buctketName);
    }
  }

  @override
  Future<String> uploadImage(String path, File file) async {
    String fileName = b.basename(file.path);
    String fileExtension = b.extension(file.path);
    var result = _supabase.client.storage
        .from(path)
        .upload('$fileName$fileExtension', file);
    String publicUrl = _supabase.client.storage
        .from(path)
        .getPublicUrl('$fileName$fileExtension');
    return publicUrl;
  }
}
