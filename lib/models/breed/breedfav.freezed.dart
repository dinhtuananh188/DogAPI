// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breedfav.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreedFav _$BreedFavFromJson(Map<String, dynamic> json) {
  return _BreedFav.fromJson(json);
}

/// @nodoc
mixin _$BreedFav {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_image_id')
  String? get referenceImageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedFavCopyWith<BreedFav> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedFavCopyWith<$Res> {
  factory $BreedFavCopyWith(BreedFav value, $Res Function(BreedFav) then) =
      _$BreedFavCopyWithImpl<$Res, BreedFav>;
  @useResult
  $Res call(
      {int id, @JsonKey(name: 'reference_image_id') String? referenceImageId});
}

/// @nodoc
class _$BreedFavCopyWithImpl<$Res, $Val extends BreedFav>
    implements $BreedFavCopyWith<$Res> {
  _$BreedFavCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referenceImageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      referenceImageId: freezed == referenceImageId
          ? _value.referenceImageId
          : referenceImageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedFavImplCopyWith<$Res>
    implements $BreedFavCopyWith<$Res> {
  factory _$$BreedFavImplCopyWith(
          _$BreedFavImpl value, $Res Function(_$BreedFavImpl) then) =
      __$$BreedFavImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, @JsonKey(name: 'reference_image_id') String? referenceImageId});
}

/// @nodoc
class __$$BreedFavImplCopyWithImpl<$Res>
    extends _$BreedFavCopyWithImpl<$Res, _$BreedFavImpl>
    implements _$$BreedFavImplCopyWith<$Res> {
  __$$BreedFavImplCopyWithImpl(
      _$BreedFavImpl _value, $Res Function(_$BreedFavImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referenceImageId = freezed,
  }) {
    return _then(_$BreedFavImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      referenceImageId: freezed == referenceImageId
          ? _value.referenceImageId
          : referenceImageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedFavImpl implements _BreedFav {
  const _$BreedFavImpl(
      {required this.id,
      @JsonKey(name: 'reference_image_id') this.referenceImageId});

  factory _$BreedFavImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedFavImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'reference_image_id')
  final String? referenceImageId;

  @override
  String toString() {
    return 'BreedFav(id: $id, referenceImageId: $referenceImageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedFavImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referenceImageId, referenceImageId) ||
                other.referenceImageId == referenceImageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, referenceImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedFavImplCopyWith<_$BreedFavImpl> get copyWith =>
      __$$BreedFavImplCopyWithImpl<_$BreedFavImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedFavImplToJson(
      this,
    );
  }
}

abstract class _BreedFav implements BreedFav {
  const factory _BreedFav(
      {required final int id,
      @JsonKey(name: 'reference_image_id')
      final String? referenceImageId}) = _$BreedFavImpl;

  factory _BreedFav.fromJson(Map<String, dynamic> json) =
      _$BreedFavImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'reference_image_id')
  String? get referenceImageId;
  @override
  @JsonKey(ignore: true)
  _$$BreedFavImplCopyWith<_$BreedFavImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
