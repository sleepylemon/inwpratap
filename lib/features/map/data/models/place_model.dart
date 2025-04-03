import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inwpratap/features/map/domain/entities/place.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required String id,
    required String name,
    @JsonKey(fromJson: _latLngFromJson, toJson: _latLngToJson) 
    required LatLng position,
    required String description,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => 
      _$PlaceModelFromJson(json);

  factory PlaceModel.fromEntity(Place place) => PlaceModel(
    id: place.id,
    name: place.name,
    position: place.position,
    description: place.description,
  );
}

// Convert LatLng to/from JSON
LatLng _latLngFromJson(Map<String, dynamic> json) => 
    LatLng(json['latitude'] as double, json['longitude'] as double);

Map<String, dynamic> _latLngToJson(LatLng latLng) => 
    {'latitude': latLng.latitude, 'longitude': latLng.longitude};