import 'package:bloc/bloc.dart';
import 'package:fruits_hub_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/domin/entities/product_entity.dart';
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.imageRepo, this.productsRepo)
    : super(AddProductInitial());
  ImageRepo imageRepo;
  ProductsRepo productsRepo;

  void addProduct(ProductEntity productEntity) async {
    emit(AddProductloading());
    var result = await imageRepo.uploadImage(productEntity.imageFile);
    result.fold(
      (failuer) {
        emit(AddProductFailure(failuer.errMessage));
      },
      (imageUrl) async {
        productEntity.imageUrl = imageUrl;
        var productResult = await productsRepo.addProduct(productEntity);
        productResult.fold(
          (failuer) {
            emit(AddProductFailure(failuer.errMessage));
          },
          (r) {
            emit(AddProductSuccess());
          },
        );
      },
    );
  }
}
