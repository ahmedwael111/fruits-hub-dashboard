import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/image_repo/image_repo_imple.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/products_repo_impl.dart';
import 'package:fruits_hub_dashboard/core/services/database_service.dart';
import 'package:fruits_hub_dashboard/core/services/firebase_firestor_servece.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:fruits_hub_dashboard/core/services/supabase_storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
getItSetUp() {
  getIt.registerLazySingleton<StorageServices>(() => SupabaseStorageService());
  getIt.registerLazySingleton<DatabaseService>(() => FirebaseFirestorService());
  getIt.registerLazySingleton<ImageRepo>(
    () => ImageRepoImple(storageServices: getIt.get<StorageServices>()),
  );
  getIt.registerLazySingleton<ProductsRepo>(
    () => ProductsRepoImpl(databaseService: getIt.get<DatabaseService>()),
  );
}
