// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceModelImpl _$$PlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$PlaceModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      position: _latLngFromJson(json['position'] as Map<String, dynamic>),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PlaceModelImplToJson(_$PlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': _latLngToJson(instance.position),
      'description': instance.description,
    };
