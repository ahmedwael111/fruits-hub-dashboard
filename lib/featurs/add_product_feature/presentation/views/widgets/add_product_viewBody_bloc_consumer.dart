import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/utils/coustom_progress_indicator.dart';
import 'package:fruits_hub_dashboard/core/utils/show_snake_bar.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/manager/cubit/add_product_cubit.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/add_product_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddProductViewBodyBlocConsumer extends StatelessWidget {
  const AddProductViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          showSnakeBar(context, 'Product Added Successfully', Colors.green);
          Navigator.pop(context);
        }
        if (state is AddProductFailure) {
          showSnakeBar(context, state.errMessage, Colors.red);
        }
      },
      builder: (context, state) {
        return CoustomProgressIndicator(
          isLoad: state is AddProductloading,
          child: AddProductViewBody(),
        );
      },
    );
  }
}
