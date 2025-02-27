// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedies_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemediesByCategory _$RemediesByCategoryFromJson(Map<String, dynamic> json) {
  return _RemediesByCategory.fromJson(json);
}

/// @nodoc
mixin _$RemediesByCategory {
  String get remedyName => throw _privateConstructorUsedError;
  List<String>? get commonNames => throw _privateConstructorUsedError;
  List<String>? get primaryUses => throw _privateConstructorUsedError;
  String? get scientificName => throw _privateConstructorUsedError;

  /// Serializes this RemediesByCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemediesByCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemediesByCategoryCopyWith<RemediesByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemediesByCategoryCopyWith<$Res> {
  factory $RemediesByCategoryCopyWith(
    RemediesByCategory value,
    $Res Function(RemediesByCategory) then,
  ) = _$RemediesByCategoryCopyWithImpl<$Res, RemediesByCategory>;
  @useResult
  $Res call({
    String remedyName,
    List<String>? commonNames,
    List<String>? primaryUses,
    String? scientificName,
  });
}

/// @nodoc
class _$RemediesByCategoryCopyWithImpl<$Res, $Val extends RemediesByCategory>
    implements $RemediesByCategoryCopyWith<$Res> {
  _$RemediesByCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemediesByCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? commonNames = freezed,
    Object? primaryUses = freezed,
    Object? scientificName = freezed,
  }) {
    return _then(
      _value.copyWith(
            remedyName:
                null == remedyName
                    ? _value.remedyName
                    : remedyName // ignore: cast_nullable_to_non_nullable
                        as String,
            commonNames:
                freezed == commonNames
                    ? _value.commonNames
                    : commonNames // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            primaryUses:
                freezed == primaryUses
                    ? _value.primaryUses
                    : primaryUses // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            scientificName:
                freezed == scientificName
                    ? _value.scientificName
                    : scientificName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemediesByCategoryImplCopyWith<$Res>
    implements $RemediesByCategoryCopyWith<$Res> {
  factory _$$RemediesByCategoryImplCopyWith(
    _$RemediesByCategoryImpl value,
    $Res Function(_$RemediesByCategoryImpl) then,
  ) = __$$RemediesByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String remedyName,
    List<String>? commonNames,
    List<String>? primaryUses,
    String? scientificName,
  });
}

/// @nodoc
class __$$RemediesByCategoryImplCopyWithImpl<$Res>
    extends _$RemediesByCategoryCopyWithImpl<$Res, _$RemediesByCategoryImpl>
    implements _$$RemediesByCategoryImplCopyWith<$Res> {
  __$$RemediesByCategoryImplCopyWithImpl(
    _$RemediesByCategoryImpl _value,
    $Res Function(_$RemediesByCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemediesByCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? commonNames = freezed,
    Object? primaryUses = freezed,
    Object? scientificName = freezed,
  }) {
    return _then(
      _$RemediesByCategoryImpl(
        remedyName:
            null == remedyName
                ? _value.remedyName
                : remedyName // ignore: cast_nullable_to_non_nullable
                    as String,
        commonNames:
            freezed == commonNames
                ? _value._commonNames
                : commonNames // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        primaryUses:
            freezed == primaryUses
                ? _value._primaryUses
                : primaryUses // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        scientificName:
            freezed == scientificName
                ? _value.scientificName
                : scientificName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemediesByCategoryImpl implements _RemediesByCategory {
  const _$RemediesByCategoryImpl({
    required this.remedyName,
    final List<String>? commonNames,
    final List<String>? primaryUses,
    this.scientificName,
  }) : _commonNames = commonNames,
       _primaryUses = primaryUses;

  factory _$RemediesByCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemediesByCategoryImplFromJson(json);

  @override
  final String remedyName;
  final List<String>? _commonNames;
  @override
  List<String>? get commonNames {
    final value = _commonNames;
    if (value == null) return null;
    if (_commonNames is EqualUnmodifiableListView) return _commonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _primaryUses;
  @override
  List<String>? get primaryUses {
    final value = _primaryUses;
    if (value == null) return null;
    if (_primaryUses is EqualUnmodifiableListView) return _primaryUses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? scientificName;

  @override
  String toString() {
    return 'RemediesByCategory(remedyName: $remedyName, commonNames: $commonNames, primaryUses: $primaryUses, scientificName: $scientificName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemediesByCategoryImpl &&
            (identical(other.remedyName, remedyName) ||
                other.remedyName == remedyName) &&
            const DeepCollectionEquality().equals(
              other._commonNames,
              _commonNames,
            ) &&
            const DeepCollectionEquality().equals(
              other._primaryUses,
              _primaryUses,
            ) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    remedyName,
    const DeepCollectionEquality().hash(_commonNames),
    const DeepCollectionEquality().hash(_primaryUses),
    scientificName,
  );

  /// Create a copy of RemediesByCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemediesByCategoryImplCopyWith<_$RemediesByCategoryImpl> get copyWith =>
      __$$RemediesByCategoryImplCopyWithImpl<_$RemediesByCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemediesByCategoryImplToJson(this);
  }
}

abstract class _RemediesByCategory implements RemediesByCategory {
  const factory _RemediesByCategory({
    required final String remedyName,
    final List<String>? commonNames,
    final List<String>? primaryUses,
    final String? scientificName,
  }) = _$RemediesByCategoryImpl;

  factory _RemediesByCategory.fromJson(Map<String, dynamic> json) =
      _$RemediesByCategoryImpl.fromJson;

  @override
  String get remedyName;
  @override
  List<String>? get commonNames;
  @override
  List<String>? get primaryUses;
  @override
  String? get scientificName;

  /// Create a copy of RemediesByCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemediesByCategoryImplCopyWith<_$RemediesByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
