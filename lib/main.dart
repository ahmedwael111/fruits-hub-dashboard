import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/functions/routes.dart';
import 'package:fruits_hub_dashboard/featurs/dashboard_feature/presentation/views/home_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.routeName,
      onGenerateRoute: onGenerate,
    );
  }
}
