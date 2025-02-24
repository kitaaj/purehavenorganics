// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryPath _$CategoryPathFromJson(Map<String, dynamic> json) {
  return _CategoryPath.fromJson(json);
}

/// @nodoc
mixin _$CategoryPath {
  int get level => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;

  /// Serializes this CategoryPath to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryPathCopyWith<CategoryPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPathCopyWith<$Res> {
  factory $CategoryPathCopyWith(
    CategoryPath value,
    $Res Function(CategoryPath) then,
  ) = _$CategoryPathCopyWithImpl<$Res, CategoryPath>;
  @useResult
  $Res call({int level, String categoryName});
}

/// @nodoc
class _$CategoryPathCopyWithImpl<$Res, $Val extends CategoryPath>
    implements $CategoryPathCopyWith<$Res> {
  _$CategoryPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? level = null, Object? categoryName = null}) {
    return _then(
      _value.copyWith(
            level:
                null == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$CategoryPathImplCopyWith<$Res>
    implements $CategoryPathCopyWith<$Res> {
  factory _$$CategoryPathImplCopyWith(
    _$CategoryPathImpl value,
    $Res Function(_$CategoryPathImpl) then,
  ) = __$$CategoryPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, String categoryName});
}

/// @nodoc
class __$$CategoryPathImplCopyWithImpl<$Res>
    extends _$CategoryPathCopyWithImpl<$Res, _$CategoryPathImpl>
    implements _$$CategoryPathImplCopyWith<$Res> {
  __$$CategoryPathImplCopyWithImpl(
    _$CategoryPathImpl _value,
    $Res Function(_$CategoryPathImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? level = null, Object? categoryName = null}) {
    return _then(
      _$CategoryPathImpl(
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$CategoryPathImpl implements _CategoryPath {
  const _$CategoryPathImpl({required this.level, required this.categoryName});

  factory _$CategoryPathImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryPathImplFromJson(json);

  @override
  final int level;
  @override
  final String categoryName;

  @override
  String toString() {
    return 'CategoryPath(level: $level, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryPathImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level, categoryName);

  /// Create a copy of CategoryPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryPathImplCopyWith<_$CategoryPathImpl> get copyWith =>
      __$$CategoryPathImplCopyWithImpl<_$CategoryPathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryPathImplToJson(this);
  }
}

abstract class _CategoryPath implements CategoryPath {
  const factory _CategoryPath({
    required final int level,
    required final String categoryName,
  }) = _$CategoryPathImpl;

  factory _CategoryPath.fromJson(Map<String, dynamic> json) =
      _$CategoryPathImpl.fromJson;

  @override
  int get level;
  @override
  String get categoryName;

  /// Create a copy of CategoryPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryPathImplCopyWith<_$CategoryPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
