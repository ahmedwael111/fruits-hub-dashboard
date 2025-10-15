import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/coustm_bottom.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/add_product_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CoustomBottom(
            onPressed: () {
              
              Navigator.pushNamed(context, AddProductView.routeName);
            },
            text: 'Add Product',
          ),
        ],
      ),
    );
  }
}
