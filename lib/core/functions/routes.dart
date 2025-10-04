import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/featurs/dashboard_feature/presentation/views/home_view.dart';

Route<dynamic>? onGenerate(RouteSettings settings)  {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    default:
      return MaterialPageRoute(builder: (_) => const HomeView());
  }
}