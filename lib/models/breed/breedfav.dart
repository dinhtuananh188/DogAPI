import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'breedfav.g.dart';
part 'breedfav.freezed.dart';


@Freezed(fromJson: true)
class BreedFav with _$BreedFav {
  const factory BreedFav({
    required int id,
    @JsonKey(name: 'reference_image_id') String? referenceImageId,
  }) = _BreedFav;

  factory BreedFav.fromJson(Map<String, dynamic> json) =>
      _$BreedFavFromJson(json);
}