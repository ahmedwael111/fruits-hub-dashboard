import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/add_product_entity.dart';

abstract class ProductsRepo {
  Future<Either<Failuer, void>> addProduct(AddProductEntity addProductEntity);
  // Future<List<ProductEntity>> getAllProducts();
  // Future<void> deleteProduct(String productId);
}