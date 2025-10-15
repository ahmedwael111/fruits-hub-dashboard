import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/repos/image_repo/image_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/core/services/get_it_local_service.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/manager/cubit/add_product_cubit.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/add_product_viewBody_bloc_consumer.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/add_product_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const String routeName = '/addProductView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => AddProductCubit(
            getIt.get<ImageRepo>(),
            getIt.get<ProductsRepo>(),
          ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Add Product'), centerTitle: true),
        body: AddProductViewBodyBlocConsumer(),
      ),
    );
  }
}
