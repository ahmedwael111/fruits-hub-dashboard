import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';
import 'package:fruits_hub_dashboard/core/repos/image_repo/image_repo.dart';

class ImageRepoImple  implements ImageRepo{
  @override
  Future<Either<Failuer, String>> uploadImage(File filePath) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}