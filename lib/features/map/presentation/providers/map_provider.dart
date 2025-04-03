import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/map_constants.dart';
import '../../domain/entities/place.dart';

part 'map_provider.g.dart';

@riverpod
class SelectedPlace extends _$SelectedPlace {
  @override
  Place? build() => null;

  void selectPlace(Place place) {
    state = place;
  }

  void clearSelection() {
    state = null;
  }
}

@riverpod
class Places extends _$Places {
  @override
  List<Place> build() {
    // Convert mock data to Place entities
    return MapConstants.mockPlaces.map((mockPlace) {
      return Place(
        id: mockPlace['id'] as String,
        name: mockPlace['name'] as String,
        position: mockPlace['position'] as LatLng,
        description: mockPlace['description'] as String,
      );
    }).toList();
  }
}

@riverpod
class Markers extends _$Markers {
  @override
  Set<Marker> build() {
    final places = ref.watch(placesProvider);
    final selectedPlace = ref.watch(selectedPlaceProvider);
    
    return places.map((place) {
      return Marker(
        markerId: MarkerId(place.id),
        position: place.position,
        infoWindow: InfoWindow(
          title: place.name,
          snippet: place.description,
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          selectedPlace?.id == place.id
              ? BitmapDescriptor.hueGreen
              : BitmapDescriptor.hueRed,
        ),
        onTap: () {
          ref.read(selectedPlaceProvider.notifier).selectPlace(place);
        },
      );
    }).toSet();
  }
}