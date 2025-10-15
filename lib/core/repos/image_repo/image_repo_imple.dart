import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';
import 'package:fruits_hub_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:fruits_hub_dashboard/core/utils/backend_endpoints_statics.dart';

class ImageRepoImple implements ImageRepo {
  @override
  final StorageServices storageServices;

  ImageRepoImple({required this.storageServices});
  @override
  Future<Either<Failuer, String>> uploadImage(File filePath) async {
    try {
      String path = await storageServices.uploadImage(
        BackendEndpointsStatics.images,
        filePath,
      );
      return right(path);
    } catch (e) {
      log(' exception from imageRepoImple.uploadImage : ${e.toString()}');
      return left(ServerFailuer('filed to upload image'));
    }
  }
}
