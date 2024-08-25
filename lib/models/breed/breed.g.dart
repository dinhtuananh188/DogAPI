// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedImpl _$$BreedImplFromJson(Map<String, dynamic> json) => _$BreedImpl(
      weight: Weight.fromJson(json['weight'] as Map<String, dynamic>),
      height: Height.fromJson(json['height'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      countryCode: json['country_code'] as String?,
      bredFor: json['bred_for'] as String?,
      breedGroup: json['breed_group'] as String?,
      lifeSpan: json['life_span'] as String?,
      temperament: json['temperament'] as String?,
      origin: json['origin'] as String?,
      referenceImageId: json['reference_image_id'] as String?,
    );

Map<String, dynamic> _$$BreedImplToJson(_$BreedImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'country_code': instance.countryCode,
      'bred_for': instance.bredFor,
      'breed_group': instance.breedGroup,
      'life_span': instance.lifeSpan,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'reference_image_id': instance.referenceImageId,
    };

_$WeightImpl _$$WeightImplFromJson(Map<String, dynamic> json) => _$WeightImpl(
      imperial: json['imperial'] as String,
      metric: json['metric'] as String,
    );

Map<String, dynamic> _$$WeightImplToJson(_$WeightImpl instance) =>
    <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };

_$HeightImpl _$$HeightImplFromJson(Map<String, dynamic> json) => _$HeightImpl(
      imperial: json['imperial'] as String,
      metric: json['metric'] as String,
    );

Map<String, dynamic> _$$HeightImplToJson(_$HeightImpl instance) =>
    <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
