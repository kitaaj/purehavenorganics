// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedy_by_health_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemedyByHealthCategory _$RemedyByHealthCategoryFromJson(
  Map<String, dynamic> json,
) {
  return _RemedyByHealthCategory.fromJson(json);
}

/// @nodoc
mixin _$RemedyByHealthCategory {
  @HiveField(0)
  int get remedyId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get remedyName => throw _privateConstructorUsedError;
  @HiveField(2)
  int get healthCategoryId => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get primaryCategory => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get effectivenessRating => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get notes => throw _privateConstructorUsedError;
  @HiveField(6)
  String get categoryName => throw _privateConstructorUsedError;

  /// Serializes this RemedyByHealthCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemedyByHealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemedyByHealthCategoryCopyWith<RemedyByHealthCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemedyByHealthCategoryCopyWith<$Res> {
  factory $RemedyByHealthCategoryCopyWith(
    RemedyByHealthCategory value,
    $Res Function(RemedyByHealthCategory) then,
  ) = _$RemedyByHealthCategoryCopyWithImpl<$Res, RemedyByHealthCategory>;
  @useResult
  $Res call({
    @HiveField(0) int remedyId,
    @HiveField(1) String remedyName,
    @HiveField(2) int healthCategoryId,
    @HiveField(3) bool primaryCategory,
    @HiveField(4) int? effectivenessRating,
    @HiveField(5) String? notes,
    @HiveField(6) String categoryName,
  });
}

/// @nodoc
class _$RemedyByHealthCategoryCopyWithImpl<
  $Res,
  $Val extends RemedyByHealthCategory
>
    implements $RemedyByHealthCategoryCopyWith<$Res> {
  _$RemedyByHealthCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemedyByHealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyId = null,
    Object? remedyName = null,
    Object? healthCategoryId = null,
    Object? primaryCategory = null,
    Object? effectivenessRating = freezed,
    Object? notes = freezed,
    Object? categoryName = null,
  }) {
    return _then(
      _value.copyWith(
            remedyId:
                null == remedyId
                    ? _value.remedyId
                    : remedyId // ignore: cast_nullable_to_non_nullable
                        as int,
            remedyName:
                null == remedyName
                    ? _value.remedyName
                    : remedyName // ignore: cast_nullable_to_non_nullable
                        as String,
            healthCategoryId:
                null == healthCategoryId
                    ? _value.healthCategoryId
                    : healthCategoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            primaryCategory:
                null == primaryCategory
                    ? _value.primaryCategory
                    : primaryCategory // ignore: cast_nullable_to_non_nullable
                        as bool,
            effectivenessRating:
                freezed == effectivenessRating
                    ? _value.effectivenessRating
                    : effectivenessRating // ignore: cast_nullable_to_non_nullable
                        as int?,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemedyByHealthCategoryImplCopyWith<$Res>
    implements $RemedyByHealthCategoryCopyWith<$Res> {
  factory _$$RemedyByHealthCategoryImplCopyWith(
    _$RemedyByHealthCategoryImpl value,
    $Res Function(_$RemedyByHealthCategoryImpl) then,
  ) = __$$RemedyByHealthCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int remedyId,
    @HiveField(1) String remedyName,
    @HiveField(2) int healthCategoryId,
    @HiveField(3) bool primaryCategory,
    @HiveField(4) int? effectivenessRating,
    @HiveField(5) String? notes,
    @HiveField(6) String categoryName,
  });
}

/// @nodoc
class __$$RemedyByHealthCategoryImplCopyWithImpl<$Res>
    extends
        _$RemedyByHealthCategoryCopyWithImpl<$Res, _$RemedyByHealthCategoryImpl>
    implements _$$RemedyByHealthCategoryImplCopyWith<$Res> {
  __$$RemedyByHealthCategoryImplCopyWithImpl(
    _$RemedyByHealthCategoryImpl _value,
    $Res Function(_$RemedyByHealthCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemedyByHealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyId = null,
    Object? remedyName = null,
    Object? healthCategoryId = null,
    Object? primaryCategory = null,
    Object? effectivenessRating = freezed,
    Object? notes = freezed,
    Object? categoryName = null,
  }) {
    return _then(
      _$RemedyByHealthCategoryImpl(
        remedyId:
            null == remedyId
                ? _value.remedyId
                : remedyId // ignore: cast_nullable_to_non_nullable
                    as int,
        remedyName:
            null == remedyName
                ? _value.remedyName
                : remedyName // ignore: cast_nullable_to_non_nullable
                    as String,
        healthCategoryId:
            null == healthCategoryId
                ? _value.healthCategoryId
                : healthCategoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        primaryCategory:
            null == primaryCategory
                ? _value.primaryCategory
                : primaryCategory // ignore: cast_nullable_to_non_nullable
                    as bool,
        effectivenessRating:
            freezed == effectivenessRating
                ? _value.effectivenessRating
                : effectivenessRating // ignore: cast_nullable_to_non_nullable
                    as int?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyByHealthCategoryImpl implements _RemedyByHealthCategory {
  const _$RemedyByHealthCategoryImpl({
    @HiveField(0) required this.remedyId,
    @HiveField(1) required this.remedyName,
    @HiveField(2) required this.healthCategoryId,
    @HiveField(3) required this.primaryCategory,
    @HiveField(4) this.effectivenessRating,
    @HiveField(5) this.notes,
    @HiveField(6) required this.categoryName,
  });

  factory _$RemedyByHealthCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemedyByHealthCategoryImplFromJson(json);

  @override
  @HiveField(0)
  final int remedyId;
  @override
  @HiveField(1)
  final String remedyName;
  @override
  @HiveField(2)
  final int healthCategoryId;
  @override
  @HiveField(3)
  final bool primaryCategory;
  @override
  @HiveField(4)
  final int? effectivenessRating;
  @override
  @HiveField(5)
  final String? notes;
  @override
  @HiveField(6)
  final String categoryName;

  @override
  String toString() {
    return 'RemedyByHealthCategory(remedyId: $remedyId, remedyName: $remedyName, healthCategoryId: $healthCategoryId, primaryCategory: $primaryCategory, effectivenessRating: $effectivenessRating, notes: $notes, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemedyByHealthCategoryImpl &&
            (identical(other.remedyId, remedyId) ||
                other.remedyId == remedyId) &&
            (identical(other.remedyName, remedyName) ||
                other.remedyName == remedyName) &&
            (identical(other.healthCategoryId, healthCategoryId) ||
                other.healthCategoryId == healthCategoryId) &&
            (identical(other.primaryCategory, primaryCategory) ||
                other.primaryCategory == primaryCategory) &&
            (identical(other.effectivenessRating, effectivenessRating) ||
                other.effectivenessRating == effectivenessRating) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    remedyId,
    remedyName,
    healthCategoryId,
    primaryCategory,
    effectivenessRating,
    notes,
    categoryName,
  );

  /// Create a copy of RemedyByHealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemedyByHealthCategoryImplCopyWith<_$RemedyByHealthCategoryImpl>
  get copyWith =>
      __$$RemedyByHealthCategoryImplCopyWithImpl<_$RemedyByHealthCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemedyByHealthCategoryImplToJson(this);
  }
}

abstract class _RemedyByHealthCategory implements RemedyByHealthCategory {
  const factory _RemedyByHealthCategory({
    @HiveField(0) required final int remedyId,
    @HiveField(1) required final String remedyName,
    @HiveField(2) required final int healthCategoryId,
    @HiveField(3) required final bool primaryCategory,
    @HiveField(4) final int? effectivenessRating,
    @HiveField(5) final String? notes,
    @HiveField(6) required final String categoryName,
  }) = _$RemedyByHealthCategoryImpl;

  factory _RemedyByHealthCategory.fromJson(Map<String, dynamic> json) =
      _$RemedyByHealthCategoryImpl.fromJson;

  @override
  @HiveField(0)
  int get remedyId;
  @override
  @HiveField(1)
  String get remedyName;
  @override
  @HiveField(2)
  int get healthCategoryId;
  @override
  @HiveField(3)
  bool get primaryCategory;
  @override
  @HiveField(4)
  int? get effectivenessRating;
  @override
  @HiveField(5)
  String? get notes;
  @override
  @HiveField(6)
  String get categoryName;

  /// Create a copy of RemedyByHealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyByHealthCategoryImplCopyWith<_$RemedyByHealthCategoryImpl>
  get copyWith => throw _privateConstructorUsedError;
}
