import 'package:flutter/material.dart';
import 'package:rota_gourmet/presentation/custom_drawer.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text(
          'Página de Favoritos',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
