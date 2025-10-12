import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';

abstract class ImageRepo {
  Future<Either<Failuer, String>> uploadImage(File filePath);
}
