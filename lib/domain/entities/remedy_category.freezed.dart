// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedy_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemedyCategory _$RemedyCategoryFromJson(Map<String, dynamic> json) {
  return _RemedyCategory.fromJson(json);
}

/// @nodoc
mixin _$RemedyCategory {
  @HiveField(0)
  int get categoryId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get categoryName => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RemedyCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemedyCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemedyCategoryCopyWith<RemedyCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemedyCategoryCopyWith<$Res> {
  factory $RemedyCategoryCopyWith(
    RemedyCategory value,
    $Res Function(RemedyCategory) then,
  ) = _$RemedyCategoryCopyWithImpl<$Res, RemedyCategory>;
  @useResult
  $Res call({
    @HiveField(0) int categoryId,
    @HiveField(1) String categoryName,
    @HiveField(2) String? description,
    @HiveField(3) DateTime? createdAt,
  });
}

/// @nodoc
class _$RemedyCategoryCopyWithImpl<$Res, $Val extends RemedyCategory>
    implements $RemedyCategoryCopyWith<$Res> {
  _$RemedyCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemedyCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            categoryId:
                null == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemedyCategoryImplCopyWith<$Res>
    implements $RemedyCategoryCopyWith<$Res> {
  factory _$$RemedyCategoryImplCopyWith(
    _$RemedyCategoryImpl value,
    $Res Function(_$RemedyCategoryImpl) then,
  ) = __$$RemedyCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) int categoryId,
    @HiveField(1) String categoryName,
    @HiveField(2) String? description,
    @HiveField(3) DateTime? createdAt,
  });
}

/// @nodoc
class __$$RemedyCategoryImplCopyWithImpl<$Res>
    extends _$RemedyCategoryCopyWithImpl<$Res, _$RemedyCategoryImpl>
    implements _$$RemedyCategoryImplCopyWith<$Res> {
  __$$RemedyCategoryImplCopyWithImpl(
    _$RemedyCategoryImpl _value,
    $Res Function(_$RemedyCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemedyCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$RemedyCategoryImpl(
        categoryId:
            null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyCategoryImpl implements _RemedyCategory {
  const _$RemedyCategoryImpl({
    @HiveField(0) required this.categoryId,
    @HiveField(1) required this.categoryName,
    @HiveField(2) this.description,
    @HiveField(3) this.createdAt,
  });

  factory _$RemedyCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemedyCategoryImplFromJson(json);

  @override
  @HiveField(0)
  final int categoryId;
  @override
  @HiveField(1)
  final String categoryName;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RemedyCategory(categoryId: $categoryId, categoryName: $categoryName, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemedyCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    categoryId,
    categoryName,
    description,
    createdAt,
  );

  /// Create a copy of RemedyCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemedyCategoryImplCopyWith<_$RemedyCategoryImpl> get copyWith =>
      __$$RemedyCategoryImplCopyWithImpl<_$RemedyCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemedyCategoryImplToJson(this);
  }
}

abstract class _RemedyCategory implements RemedyCategory {
  const factory _RemedyCategory({
    @HiveField(0) required final int categoryId,
    @HiveField(1) required final String categoryName,
    @HiveField(2) final String? description,
    @HiveField(3) final DateTime? createdAt,
  }) = _$RemedyCategoryImpl;

  factory _RemedyCategory.fromJson(Map<String, dynamic> json) =
      _$RemedyCategoryImpl.fromJson;

  @override
  @HiveField(0)
  int get categoryId;
  @override
  @HiveField(1)
  String get categoryName;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  DateTime? get createdAt;

  /// Create a copy of RemedyCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyCategoryImplCopyWith<_$RemedyCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
