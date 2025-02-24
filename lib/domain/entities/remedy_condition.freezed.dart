// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedy_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemedyCondition _$RemedyConditionFromJson(Map<String, dynamic> json) {
  return _RemedyCondition.fromJson(json);
}

/// @nodoc
mixin _$RemedyCondition {
  String get conditionName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get symptoms => throw _privateConstructorUsedError;
  int? get effectiveness => throw _privateConstructorUsedError;
  bool get hasTraditionalUse => throw _privateConstructorUsedError;
  bool get hasScientificEvidence => throw _privateConstructorUsedError;

  /// Serializes this RemedyCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemedyCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemedyConditionCopyWith<RemedyCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemedyConditionCopyWith<$Res> {
  factory $RemedyConditionCopyWith(
    RemedyCondition value,
    $Res Function(RemedyCondition) then,
  ) = _$RemedyConditionCopyWithImpl<$Res, RemedyCondition>;
  @useResult
  $Res call({
    String conditionName,
    String? description,
    List<String>? symptoms,
    int? effectiveness,
    bool hasTraditionalUse,
    bool hasScientificEvidence,
  });
}

/// @nodoc
class _$RemedyConditionCopyWithImpl<$Res, $Val extends RemedyCondition>
    implements $RemedyConditionCopyWith<$Res> {
  _$RemedyConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemedyCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionName = null,
    Object? description = freezed,
    Object? symptoms = freezed,
    Object? effectiveness = freezed,
    Object? hasTraditionalUse = null,
    Object? hasScientificEvidence = null,
  }) {
    return _then(
      _value.copyWith(
            conditionName:
                null == conditionName
                    ? _value.conditionName
                    : conditionName // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            symptoms:
                freezed == symptoms
                    ? _value.symptoms
                    : symptoms // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            effectiveness:
                freezed == effectiveness
                    ? _value.effectiveness
                    : effectiveness // ignore: cast_nullable_to_non_nullable
                        as int?,
            hasTraditionalUse:
                null == hasTraditionalUse
                    ? _value.hasTraditionalUse
                    : hasTraditionalUse // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasScientificEvidence:
                null == hasScientificEvidence
                    ? _value.hasScientificEvidence
                    : hasScientificEvidence // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemedyConditionImplCopyWith<$Res>
    implements $RemedyConditionCopyWith<$Res> {
  factory _$$RemedyConditionImplCopyWith(
    _$RemedyConditionImpl value,
    $Res Function(_$RemedyConditionImpl) then,
  ) = __$$RemedyConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String conditionName,
    String? description,
    List<String>? symptoms,
    int? effectiveness,
    bool hasTraditionalUse,
    bool hasScientificEvidence,
  });
}

/// @nodoc
class __$$RemedyConditionImplCopyWithImpl<$Res>
    extends _$RemedyConditionCopyWithImpl<$Res, _$RemedyConditionImpl>
    implements _$$RemedyConditionImplCopyWith<$Res> {
  __$$RemedyConditionImplCopyWithImpl(
    _$RemedyConditionImpl _value,
    $Res Function(_$RemedyConditionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemedyCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionName = null,
    Object? description = freezed,
    Object? symptoms = freezed,
    Object? effectiveness = freezed,
    Object? hasTraditionalUse = null,
    Object? hasScientificEvidence = null,
  }) {
    return _then(
      _$RemedyConditionImpl(
        conditionName:
            null == conditionName
                ? _value.conditionName
                : conditionName // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        symptoms:
            freezed == symptoms
                ? _value._symptoms
                : symptoms // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        effectiveness:
            freezed == effectiveness
                ? _value.effectiveness
                : effectiveness // ignore: cast_nullable_to_non_nullable
                    as int?,
        hasTraditionalUse:
            null == hasTraditionalUse
                ? _value.hasTraditionalUse
                : hasTraditionalUse // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasScientificEvidence:
            null == hasScientificEvidence
                ? _value.hasScientificEvidence
                : hasScientificEvidence // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyConditionImpl implements _RemedyCondition {
  const _$RemedyConditionImpl({
    required this.conditionName,
    this.description,
    final List<String>? symptoms,
    this.effectiveness,
    required this.hasTraditionalUse,
    required this.hasScientificEvidence,
  }) : _symptoms = symptoms;

  factory _$RemedyConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemedyConditionImplFromJson(json);

  @override
  final String conditionName;
  @override
  final String? description;
  final List<String>? _symptoms;
  @override
  List<String>? get symptoms {
    final value = _symptoms;
    if (value == null) return null;
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? effectiveness;
  @override
  final bool hasTraditionalUse;
  @override
  final bool hasScientificEvidence;

  @override
  String toString() {
    return 'RemedyCondition(conditionName: $conditionName, description: $description, symptoms: $symptoms, effectiveness: $effectiveness, hasTraditionalUse: $hasTraditionalUse, hasScientificEvidence: $hasScientificEvidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemedyConditionImpl &&
            (identical(other.conditionName, conditionName) ||
                other.conditionName == conditionName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.effectiveness, effectiveness) ||
                other.effectiveness == effectiveness) &&
            (identical(other.hasTraditionalUse, hasTraditionalUse) ||
                other.hasTraditionalUse == hasTraditionalUse) &&
            (identical(other.hasScientificEvidence, hasScientificEvidence) ||
                other.hasScientificEvidence == hasScientificEvidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    conditionName,
    description,
    const DeepCollectionEquality().hash(_symptoms),
    effectiveness,
    hasTraditionalUse,
    hasScientificEvidence,
  );

  /// Create a copy of RemedyCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemedyConditionImplCopyWith<_$RemedyConditionImpl> get copyWith =>
      __$$RemedyConditionImplCopyWithImpl<_$RemedyConditionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemedyConditionImplToJson(this);
  }
}

abstract class _RemedyCondition implements RemedyCondition {
  const factory _RemedyCondition({
    required final String conditionName,
    final String? description,
    final List<String>? symptoms,
    final int? effectiveness,
    required final bool hasTraditionalUse,
    required final bool hasScientificEvidence,
  }) = _$RemedyConditionImpl;

  factory _RemedyCondition.fromJson(Map<String, dynamic> json) =
      _$RemedyConditionImpl.fromJson;

  @override
  String get conditionName;
  @override
  String? get description;
  @override
  List<String>? get symptoms;
  @override
  int? get effectiveness;
  @override
  bool get hasTraditionalUse;
  @override
  bool get hasScientificEvidence;

  /// Create a copy of RemedyCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyConditionImplCopyWith<_$RemedyConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
