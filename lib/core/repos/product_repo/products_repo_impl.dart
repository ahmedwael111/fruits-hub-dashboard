import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failuer.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/add_product_entity.dart';

class ProductsRepoImpl  implements ProductsRepo{
  @override
  Future<Either<Failuer, void>> addProduct(AddProductEntity addProductEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }
}