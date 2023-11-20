import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glasses_app/utils/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  static const LatLng _goggleLocalization = LatLng(23.1374214, -82.3557866);
  static const LatLng localDestination = LatLng(23.1377247,-82.3564536);
  
  final Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubicación", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: aBackgroundColor,
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: _goggleLocalization,
          zoom: 15
        ),
        markers: {
          const Marker(
            markerId: MarkerId("localDestination"),
            position: localDestination
          )
        },
        onMapCreated: _onMapCreated,
      ),
    );
  }
}
