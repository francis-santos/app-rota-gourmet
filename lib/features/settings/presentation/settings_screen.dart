import 'package:flutter/material.dart';
import 'package:rota_gourmet/presentation/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text(
          'Página de Configurações',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
