// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedPlaceHash() => r'251546d15490cb4e9e79e624af78b91ef94eb771';

/// See also [SelectedPlace].
@ProviderFor(SelectedPlace)
final selectedPlaceProvider =
    AutoDisposeNotifierProvider<SelectedPlace, Place?>.internal(
      SelectedPlace.new,
      name: r'selectedPlaceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$selectedPlaceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SelectedPlace = AutoDisposeNotifier<Place?>;
String _$placesHash() => r'73f456118c45544c27435d6860f7e923fdb96c0e';

/// See also [Places].
@ProviderFor(Places)
final placesProvider =
    AutoDisposeNotifierProvider<Places, List<Place>>.internal(
      Places.new,
      name: r'placesProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product') ? null : _$placesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Places = AutoDisposeNotifier<List<Place>>;
String _$markersHash() => r'52dd781316a02dc1724fb53ed63ef737f33ebd55';

/// See also [Markers].
@ProviderFor(Markers)
final markersProvider =
    AutoDisposeNotifierProvider<Markers, Set<Marker>>.internal(
      Markers.new,
      name: r'markersProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product') ? null : _$markersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Markers = AutoDisposeNotifier<Set<Marker>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
