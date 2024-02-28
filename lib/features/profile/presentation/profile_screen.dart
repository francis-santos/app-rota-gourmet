import 'package:flutter/material.dart';
import 'package:rota_gourmet/presentation/custom_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text(
          'Página de Perfil',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
