// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedies_for_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemediesForCondition _$RemediesForConditionFromJson(Map<String, dynamic> json) {
  return _RemediesForCondition.fromJson(json);
}

/// @nodoc
mixin _$RemediesForCondition {
  @HiveField(0)
  String get remedyName => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get scientificName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get categoryName => throw _privateConstructorUsedError;
  @HiveField(3)
  int get effectivenessRating => throw _privateConstructorUsedError;
  @HiveField(4)
  List<String>? get preparationMethods => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get imgUrl => throw _privateConstructorUsedError;

  /// Serializes this RemediesForCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemediesForCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemediesForConditionCopyWith<RemediesForCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemediesForConditionCopyWith<$Res> {
  factory $RemediesForConditionCopyWith(
    RemediesForCondition value,
    $Res Function(RemediesForCondition) then,
  ) = _$RemediesForConditionCopyWithImpl<$Res, RemediesForCondition>;
  @useResult
  $Res call({
    @HiveField(0) String remedyName,
    @HiveField(1) String? scientificName,
    @HiveField(2) String categoryName,
    @HiveField(3) int effectivenessRating,
    @HiveField(4) List<String>? preparationMethods,
    @HiveField(5) String? imgUrl,
  });
}

/// @nodoc
class _$RemediesForConditionCopyWithImpl<
  $Res,
  $Val extends RemediesForCondition
>
    implements $RemediesForConditionCopyWith<$Res> {
  _$RemediesForConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemediesForCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? scientificName = freezed,
    Object? categoryName = null,
    Object? effectivenessRating = null,
    Object? preparationMethods = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            remedyName:
                null == remedyName
                    ? _value.remedyName
                    : remedyName // ignore: cast_nullable_to_non_nullable
                        as String,
            scientificName:
                freezed == scientificName
                    ? _value.scientificName
                    : scientificName // ignore: cast_nullable_to_non_nullable
                        as String?,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
            effectivenessRating:
                null == effectivenessRating
                    ? _value.effectivenessRating
                    : effectivenessRating // ignore: cast_nullable_to_non_nullable
                        as int,
            preparationMethods:
                freezed == preparationMethods
                    ? _value.preparationMethods
                    : preparationMethods // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            imgUrl:
                freezed == imgUrl
                    ? _value.imgUrl
                    : imgUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemediesForConditionImplCopyWith<$Res>
    implements $RemediesForConditionCopyWith<$Res> {
  factory _$$RemediesForConditionImplCopyWith(
    _$RemediesForConditionImpl value,
    $Res Function(_$RemediesForConditionImpl) then,
  ) = __$$RemediesForConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) String remedyName,
    @HiveField(1) String? scientificName,
    @HiveField(2) String categoryName,
    @HiveField(3) int effectivenessRating,
    @HiveField(4) List<String>? preparationMethods,
    @HiveField(5) String? imgUrl,
  });
}

/// @nodoc
class __$$RemediesForConditionImplCopyWithImpl<$Res>
    extends _$RemediesForConditionCopyWithImpl<$Res, _$RemediesForConditionImpl>
    implements _$$RemediesForConditionImplCopyWith<$Res> {
  __$$RemediesForConditionImplCopyWithImpl(
    _$RemediesForConditionImpl _value,
    $Res Function(_$RemediesForConditionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemediesForCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? scientificName = freezed,
    Object? categoryName = null,
    Object? effectivenessRating = null,
    Object? preparationMethods = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(
      _$RemediesForConditionImpl(
        remedyName:
            null == remedyName
                ? _value.remedyName
                : remedyName // ignore: cast_nullable_to_non_nullable
                    as String,
        scientificName:
            freezed == scientificName
                ? _value.scientificName
                : scientificName // ignore: cast_nullable_to_non_nullable
                    as String?,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
        effectivenessRating:
            null == effectivenessRating
                ? _value.effectivenessRating
                : effectivenessRating // ignore: cast_nullable_to_non_nullable
                    as int,
        preparationMethods:
            freezed == preparationMethods
                ? _value._preparationMethods
                : preparationMethods // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        imgUrl:
            freezed == imgUrl
                ? _value.imgUrl
                : imgUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemediesForConditionImpl implements _RemediesForCondition {
  const _$RemediesForConditionImpl({
    @HiveField(0) required this.remedyName,
    @HiveField(1) this.scientificName,
    @HiveField(2) required this.categoryName,
    @HiveField(3) required this.effectivenessRating,
    @HiveField(4) final List<String>? preparationMethods,
    @HiveField(5) this.imgUrl,
  }) : _preparationMethods = preparationMethods;

  factory _$RemediesForConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemediesForConditionImplFromJson(json);

  @override
  @HiveField(0)
  final String remedyName;
  @override
  @HiveField(1)
  final String? scientificName;
  @override
  @HiveField(2)
  final String categoryName;
  @override
  @HiveField(3)
  final int effectivenessRating;
  final List<String>? _preparationMethods;
  @override
  @HiveField(4)
  List<String>? get preparationMethods {
    final value = _preparationMethods;
    if (value == null) return null;
    if (_preparationMethods is EqualUnmodifiableListView)
      return _preparationMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  final String? imgUrl;

  @override
  String toString() {
    return 'RemediesForCondition(remedyName: $remedyName, scientificName: $scientificName, categoryName: $categoryName, effectivenessRating: $effectivenessRating, preparationMethods: $preparationMethods, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemediesForConditionImpl &&
            (identical(other.remedyName, remedyName) ||
                other.remedyName == remedyName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.effectivenessRating, effectivenessRating) ||
                other.effectivenessRating == effectivenessRating) &&
            const DeepCollectionEquality().equals(
              other._preparationMethods,
              _preparationMethods,
            ) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    remedyName,
    scientificName,
    categoryName,
    effectivenessRating,
    const DeepCollectionEquality().hash(_preparationMethods),
    imgUrl,
  );

  /// Create a copy of RemediesForCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemediesForConditionImplCopyWith<_$RemediesForConditionImpl>
  get copyWith =>
      __$$RemediesForConditionImplCopyWithImpl<_$RemediesForConditionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemediesForConditionImplToJson(this);
  }
}

abstract class _RemediesForCondition implements RemediesForCondition {
  const factory _RemediesForCondition({
    @HiveField(0) required final String remedyName,
    @HiveField(1) final String? scientificName,
    @HiveField(2) required final String categoryName,
    @HiveField(3) required final int effectivenessRating,
    @HiveField(4) final List<String>? preparationMethods,
    @HiveField(5) final String? imgUrl,
  }) = _$RemediesForConditionImpl;

  factory _RemediesForCondition.fromJson(Map<String, dynamic> json) =
      _$RemediesForConditionImpl.fromJson;

  @override
  @HiveField(0)
  String get remedyName;
  @override
  @HiveField(1)
  String? get scientificName;
  @override
  @HiveField(2)
  String get categoryName;
  @override
  @HiveField(3)
  int get effectivenessRating;
  @override
  @HiveField(4)
  List<String>? get preparationMethods;
  @override
  @HiveField(5)
  String? get imgUrl;

  /// Create a copy of RemediesForCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemediesForConditionImplCopyWith<_$RemediesForConditionImpl>
  get copyWith => throw _privateConstructorUsedError;
}
