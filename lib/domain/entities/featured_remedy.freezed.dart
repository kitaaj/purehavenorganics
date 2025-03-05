// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_remedy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeaturedRemedy _$FeaturedRemedyFromJson(Map<String, dynamic> json) {
  return _FeaturedRemedy.fromJson(json);
}

/// @nodoc
mixin _$FeaturedRemedy {
  @HiveField(0)
  String get remedyName => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get scientificName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get categoryName => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String> get primaryUses => throw _privateConstructorUsedError;
  @HiveField(4)
  int get effectivenessScore => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;

  /// Serializes this FeaturedRemedy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeaturedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeaturedRemedyCopyWith<FeaturedRemedy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedRemedyCopyWith<$Res> {
  factory $FeaturedRemedyCopyWith(
    FeaturedRemedy value,
    $Res Function(FeaturedRemedy) then,
  ) = _$FeaturedRemedyCopyWithImpl<$Res, FeaturedRemedy>;
  @useResult
  $Res call({
    @HiveField(0) String remedyName,
    @HiveField(1) String? scientificName,
    @HiveField(2) String categoryName,
    @HiveField(3) List<String> primaryUses,
    @HiveField(4) int effectivenessScore,
    String? imgUrl,
  });
}

/// @nodoc
class _$FeaturedRemedyCopyWithImpl<$Res, $Val extends FeaturedRemedy>
    implements $FeaturedRemedyCopyWith<$Res> {
  _$FeaturedRemedyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? scientificName = freezed,
    Object? categoryName = null,
    Object? primaryUses = null,
    Object? effectivenessScore = null,
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
            primaryUses:
                null == primaryUses
                    ? _value.primaryUses
                    : primaryUses // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            effectivenessScore:
                null == effectivenessScore
                    ? _value.effectivenessScore
                    : effectivenessScore // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$FeaturedRemedyImplCopyWith<$Res>
    implements $FeaturedRemedyCopyWith<$Res> {
  factory _$$FeaturedRemedyImplCopyWith(
    _$FeaturedRemedyImpl value,
    $Res Function(_$FeaturedRemedyImpl) then,
  ) = __$$FeaturedRemedyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) String remedyName,
    @HiveField(1) String? scientificName,
    @HiveField(2) String categoryName,
    @HiveField(3) List<String> primaryUses,
    @HiveField(4) int effectivenessScore,
    String? imgUrl,
  });
}

/// @nodoc
class __$$FeaturedRemedyImplCopyWithImpl<$Res>
    extends _$FeaturedRemedyCopyWithImpl<$Res, _$FeaturedRemedyImpl>
    implements _$$FeaturedRemedyImplCopyWith<$Res> {
  __$$FeaturedRemedyImplCopyWithImpl(
    _$FeaturedRemedyImpl _value,
    $Res Function(_$FeaturedRemedyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeaturedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? scientificName = freezed,
    Object? categoryName = null,
    Object? primaryUses = null,
    Object? effectivenessScore = null,
    Object? imgUrl = freezed,
  }) {
    return _then(
      _$FeaturedRemedyImpl(
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
        primaryUses:
            null == primaryUses
                ? _value._primaryUses
                : primaryUses // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        effectivenessScore:
            null == effectivenessScore
                ? _value.effectivenessScore
                : effectivenessScore // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$FeaturedRemedyImpl implements _FeaturedRemedy {
  const _$FeaturedRemedyImpl({
    @HiveField(0) required this.remedyName,
    @HiveField(1) this.scientificName,
    @HiveField(2) required this.categoryName,
    @HiveField(3) required final List<String> primaryUses,
    @HiveField(4) required this.effectivenessScore,
    this.imgUrl,
  }) : _primaryUses = primaryUses;

  factory _$FeaturedRemedyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedRemedyImplFromJson(json);

  @override
  @HiveField(0)
  final String remedyName;
  @override
  @HiveField(1)
  final String? scientificName;
  @override
  @HiveField(2)
  final String categoryName;
  final List<String> _primaryUses;
  @override
  @HiveField(3)
  List<String> get primaryUses {
    if (_primaryUses is EqualUnmodifiableListView) return _primaryUses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_primaryUses);
  }

  @override
  @HiveField(4)
  final int effectivenessScore;
  @override
  final String? imgUrl;

  @override
  String toString() {
    return 'FeaturedRemedy(remedyName: $remedyName, scientificName: $scientificName, categoryName: $categoryName, primaryUses: $primaryUses, effectivenessScore: $effectivenessScore, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedRemedyImpl &&
            (identical(other.remedyName, remedyName) ||
                other.remedyName == remedyName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality().equals(
              other._primaryUses,
              _primaryUses,
            ) &&
            (identical(other.effectivenessScore, effectivenessScore) ||
                other.effectivenessScore == effectivenessScore) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    remedyName,
    scientificName,
    categoryName,
    const DeepCollectionEquality().hash(_primaryUses),
    effectivenessScore,
    imgUrl,
  );

  /// Create a copy of FeaturedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedRemedyImplCopyWith<_$FeaturedRemedyImpl> get copyWith =>
      __$$FeaturedRemedyImplCopyWithImpl<_$FeaturedRemedyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedRemedyImplToJson(this);
  }
}

abstract class _FeaturedRemedy implements FeaturedRemedy {
  const factory _FeaturedRemedy({
    @HiveField(0) required final String remedyName,
    @HiveField(1) final String? scientificName,
    @HiveField(2) required final String categoryName,
    @HiveField(3) required final List<String> primaryUses,
    @HiveField(4) required final int effectivenessScore,
    final String? imgUrl,
  }) = _$FeaturedRemedyImpl;

  factory _FeaturedRemedy.fromJson(Map<String, dynamic> json) =
      _$FeaturedRemedyImpl.fromJson;

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
  List<String> get primaryUses;
  @override
  @HiveField(4)
  int get effectivenessScore;
  @override
  String? get imgUrl;

  /// Create a copy of FeaturedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedRemedyImplCopyWith<_$FeaturedRemedyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
