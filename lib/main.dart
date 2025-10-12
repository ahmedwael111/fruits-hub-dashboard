import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/functions/routes.dart';
import 'package:fruits_hub_dashboard/featurs/dashboard_feature/presentation/views/home_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://arqaxyapzwqvwsrssskl.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFycWF4eWFwendxdndzcnNzc2tsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjAyMzcwOTMsImV4cCI6MjA3NTgxMzA5M30._Cth_BxC0e56cZRXeOqEyK3U1Zu4GY4qYmlPYcIIpH8',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;
    return MaterialApp(
      initialRoute: HomeView.routeName,
      onGenerateRoute: onGenerate,
    );
  }
}
