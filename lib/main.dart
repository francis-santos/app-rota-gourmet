import 'package:flutter/material.dart';
import 'package:rota_gourmet/app_routes.dart';
import 'package:rota_gourmet/features/auth/presentation/login_screen.dart';
import 'package:rota_gourmet/features/dashboard/presentation/dashboard_screen.dart';

void main() {
  runApp(const RotaGourmetApp());
}

class RotaGourmetApp extends StatelessWidget {
  const RotaGourmetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rota Gourmet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.dashboard: (context) => const DashboardScreen(),
      },
    );
  }
}
