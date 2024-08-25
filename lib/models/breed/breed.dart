import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'breed.freezed.dart';
part 'breed.g.dart';

@Freezed(fromJson: true)
class Breed with _$Breed {
  const factory Breed({
    required Weight weight,
    required Height height,
    required int id,
    required String name,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'bred_for') String? bredFor,
    @JsonKey(name: 'breed_group') String? breedGroup,
    @JsonKey(name: 'life_span') String? lifeSpan,
    @JsonKey(name: 'temperament') String? temperament,
    @JsonKey(name: 'origin') String? origin,
    @JsonKey(name: 'reference_image_id') String? referenceImageId,
  }) = _Breed;

  factory Breed.fromJson(Map<String, dynamic> json) =>
      _$BreedFromJson(json);
}
@Freezed(fromJson: true)
class Weight with _$Weight {
  const factory Weight({
    required String imperial,
    required String metric,
  }) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}

@Freezed(fromJson: true)
class Height with _$Height {
  const factory Height({
    required String imperial,
    required String metric,
  }) = _Height;

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
}