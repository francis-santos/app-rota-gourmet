import 'package:flutter/material.dart';
import 'package:rota_gourmet/features/auth/presentation/login_screen.dart';

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
      home: const LoginScreen(),
    );
  }
}
