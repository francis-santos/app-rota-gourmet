import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Implemente a navegação para o item 1 aqui
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Implemente a navegação para o item 2 aqui
              },
            ),
            // Adicione mais itens conforme necessário
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à página Dashboard!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
