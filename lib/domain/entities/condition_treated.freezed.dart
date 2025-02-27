// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_treated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConditionTreated _$ConditionTreatedFromJson(Map<String, dynamic> json) {
  return _ConditionTreated.fromJson(json);
}

/// @nodoc
mixin _$ConditionTreated {
  String get condition => throw _privateConstructorUsedError;
  int? get effectiveness => throw _privateConstructorUsedError;
  bool? get traditionalUse => throw _privateConstructorUsedError;
  String? get scientificEvidence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this ConditionTreated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConditionTreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionTreatedCopyWith<ConditionTreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionTreatedCopyWith<$Res> {
  factory $ConditionTreatedCopyWith(
    ConditionTreated value,
    $Res Function(ConditionTreated) then,
  ) = _$ConditionTreatedCopyWithImpl<$Res, ConditionTreated>;
  @useResult
  $Res call({
    String condition,
    int? effectiveness,
    bool? traditionalUse,
    String? scientificEvidence,
    String? notes,
  });
}

/// @nodoc
class _$ConditionTreatedCopyWithImpl<$Res, $Val extends ConditionTreated>
    implements $ConditionTreatedCopyWith<$Res> {
  _$ConditionTreatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConditionTreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? effectiveness = freezed,
    Object? traditionalUse = freezed,
    Object? scientificEvidence = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            condition:
                null == condition
                    ? _value.condition
                    : condition // ignore: cast_nullable_to_non_nullable
                        as String,
            effectiveness:
                freezed == effectiveness
                    ? _value.effectiveness
                    : effectiveness // ignore: cast_nullable_to_non_nullable
                        as int?,
            traditionalUse:
                freezed == traditionalUse
                    ? _value.traditionalUse
                    : traditionalUse // ignore: cast_nullable_to_non_nullable
                        as bool?,
            scientificEvidence:
                freezed == scientificEvidence
                    ? _value.scientificEvidence
                    : scientificEvidence // ignore: cast_nullable_to_non_nullable
                        as String?,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConditionTreatedImplCopyWith<$Res>
    implements $ConditionTreatedCopyWith<$Res> {
  factory _$$ConditionTreatedImplCopyWith(
    _$ConditionTreatedImpl value,
    $Res Function(_$ConditionTreatedImpl) then,
  ) = __$$ConditionTreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String condition,
    int? effectiveness,
    bool? traditionalUse,
    String? scientificEvidence,
    String? notes,
  });
}

/// @nodoc
class __$$ConditionTreatedImplCopyWithImpl<$Res>
    extends _$ConditionTreatedCopyWithImpl<$Res, _$ConditionTreatedImpl>
    implements _$$ConditionTreatedImplCopyWith<$Res> {
  __$$ConditionTreatedImplCopyWithImpl(
    _$ConditionTreatedImpl _value,
    $Res Function(_$ConditionTreatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConditionTreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? effectiveness = freezed,
    Object? traditionalUse = freezed,
    Object? scientificEvidence = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _$ConditionTreatedImpl(
        condition:
            null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                    as String,
        effectiveness:
            freezed == effectiveness
                ? _value.effectiveness
                : effectiveness // ignore: cast_nullable_to_non_nullable
                    as int?,
        traditionalUse:
            freezed == traditionalUse
                ? _value.traditionalUse
                : traditionalUse // ignore: cast_nullable_to_non_nullable
                    as bool?,
        scientificEvidence:
            freezed == scientificEvidence
                ? _value.scientificEvidence
                : scientificEvidence // ignore: cast_nullable_to_non_nullable
                    as String?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionTreatedImpl implements _ConditionTreated {
  const _$ConditionTreatedImpl({
    required this.condition,
    required this.effectiveness,
    required this.traditionalUse,
    this.scientificEvidence,
    this.notes,
  });

  factory _$ConditionTreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionTreatedImplFromJson(json);

  @override
  final String condition;
  @override
  final int? effectiveness;
  @override
  final bool? traditionalUse;
  @override
  final String? scientificEvidence;
  @override
  final String? notes;

  @override
  String toString() {
    return 'ConditionTreated(condition: $condition, effectiveness: $effectiveness, traditionalUse: $traditionalUse, scientificEvidence: $scientificEvidence, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionTreatedImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.effectiveness, effectiveness) ||
                other.effectiveness == effectiveness) &&
            (identical(other.traditionalUse, traditionalUse) ||
                other.traditionalUse == traditionalUse) &&
            (identical(other.scientificEvidence, scientificEvidence) ||
                other.scientificEvidence == scientificEvidence) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    condition,
    effectiveness,
    traditionalUse,
    scientificEvidence,
    notes,
  );

  /// Create a copy of ConditionTreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionTreatedImplCopyWith<_$ConditionTreatedImpl> get copyWith =>
      __$$ConditionTreatedImplCopyWithImpl<_$ConditionTreatedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionTreatedImplToJson(this);
  }
}

abstract class _ConditionTreated implements ConditionTreated {
  const factory _ConditionTreated({
    required final String condition,
    required final int? effectiveness,
    required final bool? traditionalUse,
    final String? scientificEvidence,
    final String? notes,
  }) = _$ConditionTreatedImpl;

  factory _ConditionTreated.fromJson(Map<String, dynamic> json) =
      _$ConditionTreatedImpl.fromJson;

  @override
  String get condition;
  @override
  int? get effectiveness;
  @override
  bool? get traditionalUse;
  @override
  String? get scientificEvidence;
  @override
  String? get notes;

  /// Create a copy of ConditionTreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionTreatedImplCopyWith<_$ConditionTreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
