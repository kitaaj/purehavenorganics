// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HealthCategory _$HealthCategoryFromJson(Map<String, dynamic> json) {
  return _HealthCategory.fromJson(json);
}

/// @nodoc
mixin _$HealthCategory {
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get parentCategoryId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get hierarchyLevel => throw _privateConstructorUsedError;
  String? get categoryPath => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this HealthCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthCategoryCopyWith<HealthCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthCategoryCopyWith<$Res> {
  factory $HealthCategoryCopyWith(
    HealthCategory value,
    $Res Function(HealthCategory) then,
  ) = _$HealthCategoryCopyWithImpl<$Res, HealthCategory>;
  @useResult
  $Res call({
    int categoryId,
    String name,
    int? parentCategoryId,
    String? description,
    int hierarchyLevel,
    String? categoryPath,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$HealthCategoryCopyWithImpl<$Res, $Val extends HealthCategory>
    implements $HealthCategoryCopyWith<$Res> {
  _$HealthCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
    Object? parentCategoryId = freezed,
    Object? description = freezed,
    Object? hierarchyLevel = null,
    Object? categoryPath = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            categoryId:
                null == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            parentCategoryId:
                freezed == parentCategoryId
                    ? _value.parentCategoryId
                    : parentCategoryId // ignore: cast_nullable_to_non_nullable
                        as int?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            hierarchyLevel:
                null == hierarchyLevel
                    ? _value.hierarchyLevel
                    : hierarchyLevel // ignore: cast_nullable_to_non_nullable
                        as int,
            categoryPath:
                freezed == categoryPath
                    ? _value.categoryPath
                    : categoryPath // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HealthCategoryImplCopyWith<$Res>
    implements $HealthCategoryCopyWith<$Res> {
  factory _$$HealthCategoryImplCopyWith(
    _$HealthCategoryImpl value,
    $Res Function(_$HealthCategoryImpl) then,
  ) = __$$HealthCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int categoryId,
    String name,
    int? parentCategoryId,
    String? description,
    int hierarchyLevel,
    String? categoryPath,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$HealthCategoryImplCopyWithImpl<$Res>
    extends _$HealthCategoryCopyWithImpl<$Res, _$HealthCategoryImpl>
    implements _$$HealthCategoryImplCopyWith<$Res> {
  __$$HealthCategoryImplCopyWithImpl(
    _$HealthCategoryImpl _value,
    $Res Function(_$HealthCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
    Object? parentCategoryId = freezed,
    Object? description = freezed,
    Object? hierarchyLevel = null,
    Object? categoryPath = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$HealthCategoryImpl(
        categoryId:
            null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        parentCategoryId:
            freezed == parentCategoryId
                ? _value.parentCategoryId
                : parentCategoryId // ignore: cast_nullable_to_non_nullable
                    as int?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        hierarchyLevel:
            null == hierarchyLevel
                ? _value.hierarchyLevel
                : hierarchyLevel // ignore: cast_nullable_to_non_nullable
                    as int,
        categoryPath:
            freezed == categoryPath
                ? _value.categoryPath
                : categoryPath // ignore: cast_nullable_to_non_nullable
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
class _$HealthCategoryImpl implements _HealthCategory {
  const _$HealthCategoryImpl({
    required this.categoryId,
    required this.name,
    this.parentCategoryId,
    this.description,
    required this.hierarchyLevel,
    this.categoryPath,
    this.createdAt,
  });

  factory _$HealthCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthCategoryImplFromJson(json);

  @override
  final int categoryId;
  @override
  final String name;
  @override
  final int? parentCategoryId;
  @override
  final String? description;
  @override
  final int hierarchyLevel;
  @override
  final String? categoryPath;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'HealthCategory(categoryId: $categoryId, name: $name, parentCategoryId: $parentCategoryId, description: $description, hierarchyLevel: $hierarchyLevel, categoryPath: $categoryPath, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hierarchyLevel, hierarchyLevel) ||
                other.hierarchyLevel == hierarchyLevel) &&
            (identical(other.categoryPath, categoryPath) ||
                other.categoryPath == categoryPath) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    categoryId,
    name,
    parentCategoryId,
    description,
    hierarchyLevel,
    categoryPath,
    createdAt,
  );

  /// Create a copy of HealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthCategoryImplCopyWith<_$HealthCategoryImpl> get copyWith =>
      __$$HealthCategoryImplCopyWithImpl<_$HealthCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthCategoryImplToJson(this);
  }
}

abstract class _HealthCategory implements HealthCategory {
  const factory _HealthCategory({
    required final int categoryId,
    required final String name,
    final int? parentCategoryId,
    final String? description,
    required final int hierarchyLevel,
    final String? categoryPath,
    final DateTime? createdAt,
  }) = _$HealthCategoryImpl;

  factory _HealthCategory.fromJson(Map<String, dynamic> json) =
      _$HealthCategoryImpl.fromJson;

  @override
  int get categoryId;
  @override
  String get name;
  @override
  int? get parentCategoryId;
  @override
  String? get description;
  @override
  int get hierarchyLevel;
  @override
  String? get categoryPath;
  @override
  DateTime? get createdAt;

  /// Create a copy of HealthCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthCategoryImplCopyWith<_$HealthCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
