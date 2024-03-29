import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rota_gourmet/AppLocalizations.dart';
import 'package:rota_gourmet/presentation/custom_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations? localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations != null ? localizations.translate('appTitle') : ""),
      ),
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            initialCameraPosition: const CameraPosition(
              target: LatLng(37.42796133580664, -122.085749655962),
              zoom: 14.0,
            ),
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: localizations?.translate('searchHint'),
                  border: InputBorder.none, // Remove a borda padrão
                  filled: true, // Preenche o container com a cor de fundo
                  fillColor: Colors.white, // Cor de fundo do container
                  contentPadding: EdgeInsets.zero, // Remove o espaçamento interno do TextField
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
