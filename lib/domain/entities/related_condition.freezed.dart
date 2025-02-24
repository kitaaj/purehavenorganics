// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RelatedCondition _$RelatedConditionFromJson(Map<String, dynamic> json) {
  return _RelatedCondition.fromJson(json);
}

/// @nodoc
mixin _$RelatedCondition {
  String get relatedCondition => throw _privateConstructorUsedError;
  String get relationshipType => throw _privateConstructorUsedError;
  int get relationshipStrength => throw _privateConstructorUsedError;
  String? get relationshipDescription => throw _privateConstructorUsedError;

  /// Serializes this RelatedCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedConditionCopyWith<RelatedCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedConditionCopyWith<$Res> {
  factory $RelatedConditionCopyWith(
    RelatedCondition value,
    $Res Function(RelatedCondition) then,
  ) = _$RelatedConditionCopyWithImpl<$Res, RelatedCondition>;
  @useResult
  $Res call({
    String relatedCondition,
    String relationshipType,
    int relationshipStrength,
    String? relationshipDescription,
  });
}

/// @nodoc
class _$RelatedConditionCopyWithImpl<$Res, $Val extends RelatedCondition>
    implements $RelatedConditionCopyWith<$Res> {
  _$RelatedConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedCondition = null,
    Object? relationshipType = null,
    Object? relationshipStrength = null,
    Object? relationshipDescription = freezed,
  }) {
    return _then(
      _value.copyWith(
            relatedCondition:
                null == relatedCondition
                    ? _value.relatedCondition
                    : relatedCondition // ignore: cast_nullable_to_non_nullable
                        as String,
            relationshipType:
                null == relationshipType
                    ? _value.relationshipType
                    : relationshipType // ignore: cast_nullable_to_non_nullable
                        as String,
            relationshipStrength:
                null == relationshipStrength
                    ? _value.relationshipStrength
                    : relationshipStrength // ignore: cast_nullable_to_non_nullable
                        as int,
            relationshipDescription:
                freezed == relationshipDescription
                    ? _value.relationshipDescription
                    : relationshipDescription // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RelatedConditionImplCopyWith<$Res>
    implements $RelatedConditionCopyWith<$Res> {
  factory _$$RelatedConditionImplCopyWith(
    _$RelatedConditionImpl value,
    $Res Function(_$RelatedConditionImpl) then,
  ) = __$$RelatedConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String relatedCondition,
    String relationshipType,
    int relationshipStrength,
    String? relationshipDescription,
  });
}

/// @nodoc
class __$$RelatedConditionImplCopyWithImpl<$Res>
    extends _$RelatedConditionCopyWithImpl<$Res, _$RelatedConditionImpl>
    implements _$$RelatedConditionImplCopyWith<$Res> {
  __$$RelatedConditionImplCopyWithImpl(
    _$RelatedConditionImpl _value,
    $Res Function(_$RelatedConditionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RelatedCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedCondition = null,
    Object? relationshipType = null,
    Object? relationshipStrength = null,
    Object? relationshipDescription = freezed,
  }) {
    return _then(
      _$RelatedConditionImpl(
        relatedCondition:
            null == relatedCondition
                ? _value.relatedCondition
                : relatedCondition // ignore: cast_nullable_to_non_nullable
                    as String,
        relationshipType:
            null == relationshipType
                ? _value.relationshipType
                : relationshipType // ignore: cast_nullable_to_non_nullable
                    as String,
        relationshipStrength:
            null == relationshipStrength
                ? _value.relationshipStrength
                : relationshipStrength // ignore: cast_nullable_to_non_nullable
                    as int,
        relationshipDescription:
            freezed == relationshipDescription
                ? _value.relationshipDescription
                : relationshipDescription // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedConditionImpl implements _RelatedCondition {
  const _$RelatedConditionImpl({
    required this.relatedCondition,
    required this.relationshipType,
    required this.relationshipStrength,
    this.relationshipDescription,
  });

  factory _$RelatedConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedConditionImplFromJson(json);

  @override
  final String relatedCondition;
  @override
  final String relationshipType;
  @override
  final int relationshipStrength;
  @override
  final String? relationshipDescription;

  @override
  String toString() {
    return 'RelatedCondition(relatedCondition: $relatedCondition, relationshipType: $relationshipType, relationshipStrength: $relationshipStrength, relationshipDescription: $relationshipDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedConditionImpl &&
            (identical(other.relatedCondition, relatedCondition) ||
                other.relatedCondition == relatedCondition) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            (identical(other.relationshipStrength, relationshipStrength) ||
                other.relationshipStrength == relationshipStrength) &&
            (identical(
                  other.relationshipDescription,
                  relationshipDescription,
                ) ||
                other.relationshipDescription == relationshipDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    relatedCondition,
    relationshipType,
    relationshipStrength,
    relationshipDescription,
  );

  /// Create a copy of RelatedCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedConditionImplCopyWith<_$RelatedConditionImpl> get copyWith =>
      __$$RelatedConditionImplCopyWithImpl<_$RelatedConditionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedConditionImplToJson(this);
  }
}

abstract class _RelatedCondition implements RelatedCondition {
  const factory _RelatedCondition({
    required final String relatedCondition,
    required final String relationshipType,
    required final int relationshipStrength,
    final String? relationshipDescription,
  }) = _$RelatedConditionImpl;

  factory _RelatedCondition.fromJson(Map<String, dynamic> json) =
      _$RelatedConditionImpl.fromJson;

  @override
  String get relatedCondition;
  @override
  String get relationshipType;
  @override
  int get relationshipStrength;
  @override
  String? get relationshipDescription;

  /// Create a copy of RelatedCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedConditionImplCopyWith<_$RelatedConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
