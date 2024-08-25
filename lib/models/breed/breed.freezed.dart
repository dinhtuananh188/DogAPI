// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Breed _$BreedFromJson(Map<String, dynamic> json) {
  return _Breed.fromJson(json);
}

/// @nodoc
mixin _$Breed {
  Weight get weight => throw _privateConstructorUsedError;
  Height get height => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'bred_for')
  String? get bredFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'breed_group')
  String? get breedGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'life_span')
  String? get lifeSpan => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperament')
  String? get temperament => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin')
  String? get origin => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_image_id')
  String? get referenceImageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedCopyWith<Breed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedCopyWith<$Res> {
  factory $BreedCopyWith(Breed value, $Res Function(Breed) then) =
      _$BreedCopyWithImpl<$Res, Breed>;
  @useResult
  $Res call(
      {Weight weight,
      Height height,
      int id,
      String name,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'bred_for') String? bredFor,
      @JsonKey(name: 'breed_group') String? breedGroup,
      @JsonKey(name: 'life_span') String? lifeSpan,
      @JsonKey(name: 'temperament') String? temperament,
      @JsonKey(name: 'origin') String? origin,
      @JsonKey(name: 'reference_image_id') String? referenceImageId});

  $WeightCopyWith<$Res> get weight;
  $HeightCopyWith<$Res> get height;
}

/// @nodoc
class _$BreedCopyWithImpl<$Res, $Val extends Breed>
    implements $BreedCopyWith<$Res> {
  _$BreedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? countryCode = freezed,
    Object? bredFor = freezed,
    Object? breedGroup = freezed,
    Object? lifeSpan = freezed,
    Object? temperament = freezed,
    Object? origin = freezed,
    Object? referenceImageId = freezed,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bredFor: freezed == bredFor
          ? _value.bredFor
          : bredFor // ignore: cast_nullable_to_non_nullable
              as String?,
      breedGroup: freezed == breedGroup
          ? _value.breedGroup
          : breedGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      lifeSpan: freezed == lifeSpan
          ? _value.lifeSpan
          : lifeSpan // ignore: cast_nullable_to_non_nullable
              as String?,
      temperament: freezed == temperament
          ? _value.temperament
          : temperament // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceImageId: freezed == referenceImageId
          ? _value.referenceImageId
          : referenceImageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeightCopyWith<$Res> get weight {
    return $WeightCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HeightCopyWith<$Res> get height {
    return $HeightCopyWith<$Res>(_value.height, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BreedImplCopyWith<$Res> implements $BreedCopyWith<$Res> {
  factory _$$BreedImplCopyWith(
          _$BreedImpl value, $Res Function(_$BreedImpl) then) =
      __$$BreedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Weight weight,
      Height height,
      int id,
      String name,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'bred_for') String? bredFor,
      @JsonKey(name: 'breed_group') String? breedGroup,
      @JsonKey(name: 'life_span') String? lifeSpan,
      @JsonKey(name: 'temperament') String? temperament,
      @JsonKey(name: 'origin') String? origin,
      @JsonKey(name: 'reference_image_id') String? referenceImageId});

  @override
  $WeightCopyWith<$Res> get weight;
  @override
  $HeightCopyWith<$Res> get height;
}

/// @nodoc
class __$$BreedImplCopyWithImpl<$Res>
    extends _$BreedCopyWithImpl<$Res, _$BreedImpl>
    implements _$$BreedImplCopyWith<$Res> {
  __$$BreedImplCopyWithImpl(
      _$BreedImpl _value, $Res Function(_$BreedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? countryCode = freezed,
    Object? bredFor = freezed,
    Object? breedGroup = freezed,
    Object? lifeSpan = freezed,
    Object? temperament = freezed,
    Object? origin = freezed,
    Object? referenceImageId = freezed,
  }) {
    return _then(_$BreedImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bredFor: freezed == bredFor
          ? _value.bredFor
          : bredFor // ignore: cast_nullable_to_non_nullable
              as String?,
      breedGroup: freezed == breedGroup
          ? _value.breedGroup
          : breedGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      lifeSpan: freezed == lifeSpan
          ? _value.lifeSpan
          : lifeSpan // ignore: cast_nullable_to_non_nullable
              as String?,
      temperament: freezed == temperament
          ? _value.temperament
          : temperament // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceImageId: freezed == referenceImageId
          ? _value.referenceImageId
          : referenceImageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedImpl implements _Breed {
  const _$BreedImpl(
      {required this.weight,
      required this.height,
      required this.id,
      required this.name,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'bred_for') this.bredFor,
      @JsonKey(name: 'breed_group') this.breedGroup,
      @JsonKey(name: 'life_span') this.lifeSpan,
      @JsonKey(name: 'temperament') this.temperament,
      @JsonKey(name: 'origin') this.origin,
      @JsonKey(name: 'reference_image_id') this.referenceImageId});

  factory _$BreedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedImplFromJson(json);

  @override
  final Weight weight;
  @override
  final Height height;
  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'bred_for')
  final String? bredFor;
  @override
  @JsonKey(name: 'breed_group')
  final String? breedGroup;
  @override
  @JsonKey(name: 'life_span')
  final String? lifeSpan;
  @override
  @JsonKey(name: 'temperament')
  final String? temperament;
  @override
  @JsonKey(name: 'origin')
  final String? origin;
  @override
  @JsonKey(name: 'reference_image_id')
  final String? referenceImageId;

  @override
  String toString() {
    return 'Breed(weight: $weight, height: $height, id: $id, name: $name, countryCode: $countryCode, bredFor: $bredFor, breedGroup: $breedGroup, lifeSpan: $lifeSpan, temperament: $temperament, origin: $origin, referenceImageId: $referenceImageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.bredFor, bredFor) || other.bredFor == bredFor) &&
            (identical(other.breedGroup, breedGroup) ||
                other.breedGroup == breedGroup) &&
            (identical(other.lifeSpan, lifeSpan) ||
                other.lifeSpan == lifeSpan) &&
            (identical(other.temperament, temperament) ||
                other.temperament == temperament) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.referenceImageId, referenceImageId) ||
                other.referenceImageId == referenceImageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weight,
      height,
      id,
      name,
      countryCode,
      bredFor,
      breedGroup,
      lifeSpan,
      temperament,
      origin,
      referenceImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedImplCopyWith<_$BreedImpl> get copyWith =>
      __$$BreedImplCopyWithImpl<_$BreedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedImplToJson(
      this,
    );
  }
}

abstract class _Breed implements Breed {
  const factory _Breed(
      {required final Weight weight,
      required final Height height,
      required final int id,
      required final String name,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'bred_for') final String? bredFor,
      @JsonKey(name: 'breed_group') final String? breedGroup,
      @JsonKey(name: 'life_span') final String? lifeSpan,
      @JsonKey(name: 'temperament') final String? temperament,
      @JsonKey(name: 'origin') final String? origin,
      @JsonKey(name: 'reference_image_id')
      final String? referenceImageId}) = _$BreedImpl;

  factory _Breed.fromJson(Map<String, dynamic> json) = _$BreedImpl.fromJson;

  @override
  Weight get weight;
  @override
  Height get height;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'bred_for')
  String? get bredFor;
  @override
  @JsonKey(name: 'breed_group')
  String? get breedGroup;
  @override
  @JsonKey(name: 'life_span')
  String? get lifeSpan;
  @override
  @JsonKey(name: 'temperament')
  String? get temperament;
  @override
  @JsonKey(name: 'origin')
  String? get origin;
  @override
  @JsonKey(name: 'reference_image_id')
  String? get referenceImageId;
  @override
  @JsonKey(ignore: true)
  _$$BreedImplCopyWith<_$BreedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weight _$WeightFromJson(Map<String, dynamic> json) {
  return _Weight.fromJson(json);
}

/// @nodoc
mixin _$Weight {
  String get imperial => throw _privateConstructorUsedError;
  String get metric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res, Weight>;
  @useResult
  $Res call({String imperial, String metric});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res, $Val extends Weight>
    implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperial = null,
    Object? metric = null,
  }) {
    return _then(_value.copyWith(
      imperial: null == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightImplCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$$WeightImplCopyWith(
          _$WeightImpl value, $Res Function(_$WeightImpl) then) =
      __$$WeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imperial, String metric});
}

/// @nodoc
class __$$WeightImplCopyWithImpl<$Res>
    extends _$WeightCopyWithImpl<$Res, _$WeightImpl>
    implements _$$WeightImplCopyWith<$Res> {
  __$$WeightImplCopyWithImpl(
      _$WeightImpl _value, $Res Function(_$WeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperial = null,
    Object? metric = null,
  }) {
    return _then(_$WeightImpl(
      imperial: null == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightImpl implements _Weight {
  const _$WeightImpl({required this.imperial, required this.metric});

  factory _$WeightImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightImplFromJson(json);

  @override
  final String imperial;
  @override
  final String metric;

  @override
  String toString() {
    return 'Weight(imperial: $imperial, metric: $metric)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightImpl &&
            (identical(other.imperial, imperial) ||
                other.imperial == imperial) &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imperial, metric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      __$$WeightImplCopyWithImpl<_$WeightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightImplToJson(
      this,
    );
  }
}

abstract class _Weight implements Weight {
  const factory _Weight(
      {required final String imperial,
      required final String metric}) = _$WeightImpl;

  factory _Weight.fromJson(Map<String, dynamic> json) = _$WeightImpl.fromJson;

  @override
  String get imperial;
  @override
  String get metric;
  @override
  @JsonKey(ignore: true)
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Height _$HeightFromJson(Map<String, dynamic> json) {
  return _Height.fromJson(json);
}

/// @nodoc
mixin _$Height {
  String get imperial => throw _privateConstructorUsedError;
  String get metric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeightCopyWith<Height> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCopyWith<$Res> {
  factory $HeightCopyWith(Height value, $Res Function(Height) then) =
      _$HeightCopyWithImpl<$Res, Height>;
  @useResult
  $Res call({String imperial, String metric});
}

/// @nodoc
class _$HeightCopyWithImpl<$Res, $Val extends Height>
    implements $HeightCopyWith<$Res> {
  _$HeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperial = null,
    Object? metric = null,
  }) {
    return _then(_value.copyWith(
      imperial: null == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeightImplCopyWith<$Res> implements $HeightCopyWith<$Res> {
  factory _$$HeightImplCopyWith(
          _$HeightImpl value, $Res Function(_$HeightImpl) then) =
      __$$HeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imperial, String metric});
}

/// @nodoc
class __$$HeightImplCopyWithImpl<$Res>
    extends _$HeightCopyWithImpl<$Res, _$HeightImpl>
    implements _$$HeightImplCopyWith<$Res> {
  __$$HeightImplCopyWithImpl(
      _$HeightImpl _value, $Res Function(_$HeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperial = null,
    Object? metric = null,
  }) {
    return _then(_$HeightImpl(
      imperial: null == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeightImpl implements _Height {
  const _$HeightImpl({required this.imperial, required this.metric});

  factory _$HeightImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeightImplFromJson(json);

  @override
  final String imperial;
  @override
  final String metric;

  @override
  String toString() {
    return 'Height(imperial: $imperial, metric: $metric)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightImpl &&
            (identical(other.imperial, imperial) ||
                other.imperial == imperial) &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imperial, metric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightImplCopyWith<_$HeightImpl> get copyWith =>
      __$$HeightImplCopyWithImpl<_$HeightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeightImplToJson(
      this,
    );
  }
}

abstract class _Height implements Height {
  const factory _Height(
      {required final String imperial,
      required final String metric}) = _$HeightImpl;

  factory _Height.fromJson(Map<String, dynamic> json) = _$HeightImpl.fromJson;

  @override
  String get imperial;
  @override
  String get metric;
  @override
  @JsonKey(ignore: true)
  _$$HeightImplCopyWith<_$HeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
