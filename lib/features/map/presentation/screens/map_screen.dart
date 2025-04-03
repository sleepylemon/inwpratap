import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/constants/map_constants.dart';
import '../providers/map_provider.dart';
import '../widgets/place_details_card.dart';

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    final markers = ref.watch(markersProvider);
    final selectedPlace = ref.watch(selectedPlaceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _mapController?.animateCamera(
                CameraUpdate.newCameraPosition(
                  const CameraPosition(
                    target: MapConstants.initialPosition,
                    zoom: MapConstants.defaultZoom,
                  ),
                ),
              );
              ref.read(selectedPlaceProvider.notifier).clearSelection();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: MapConstants.initialPosition,
              zoom: MapConstants.defaultZoom,
            ),
            markers: markers,
            onMapCreated: (controller) {
              _mapController = controller;
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            compassEnabled: true,
            mapToolbarEnabled: false,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: selectedPlace != null
                  ? const PlaceDetailsCard()
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedPlace != null) {
            _mapController?.animateCamera(
              CameraUpdate.newLatLngZoom(
                selectedPlace.position,
                MapConstants.defaultZoom,
              ),
            );
          }
        },
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }
}