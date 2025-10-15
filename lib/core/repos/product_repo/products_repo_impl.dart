import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/core/services/database_service.dart';
import 'package:fruits_hub_dashboard/core/utils/backend_endpoints_statics.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/data/models/product_model.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/product_entity.dart';

class ProductsRepoImpl implements ProductsRepo {
  DatabaseService databaseService;
  ProductsRepoImpl({required this.databaseService});
  @override
  Future<Either<ServerFailuer, void>> addProduct(
    ProductEntity productEntity,
  ) async {
    try {
      await databaseService.saveData(
        path: BackendEndpointsStatics.addProduct,
        data: ProductModel.fromEntity(productEntity).toMap(),
      );
      return right(null);
    } catch (e) {
      log('exception from productRepoImple.addProduct : ${e.toString()}');
      return left(ServerFailuer('filed to add product'));
    }
  }
}
