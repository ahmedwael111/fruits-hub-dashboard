import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/featurs/add_product_feature/presentation/views/add_product_view.dart';
import 'package:fruits_hub_dashboard/featurs/dashboard_feature/presentation/views/home_view.dart';
import 'package:fruits_hub_dashboard/featurs/view_orders/presentation/views/view_orders.dart';

Route<dynamic>? onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case ViewOrders.routeName:
      return MaterialPageRoute(builder: (_) => const ViewOrders());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (_) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (_) => const HomeView());
  }
}
