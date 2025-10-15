import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/product_entity.dart';

abstract class ProductsRepo {
  Future<Either<ServerFailuer, void>> addProduct(ProductEntity productEntity);
 
}