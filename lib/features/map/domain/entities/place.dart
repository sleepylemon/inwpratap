import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'place.freezed.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required String id,
    required String name,
    required LatLng position,
    required String description,
  }) = _Place;
}