import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/widgets/add_product_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const String routeName = '/addProductView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddProductViewBody());
  }
}
