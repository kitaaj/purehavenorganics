// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_instructions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UsageInstructions _$UsageInstructionsFromJson(Map<String, dynamic> json) {
  return _UsageInstructions.fromJson(json);
}

/// @nodoc
mixin _$UsageInstructions {
  String get dosage => throw _privateConstructorUsedError;
  String get timing => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  String get precautions => throw _privateConstructorUsedError;
  String? get contraindications => throw _privateConstructorUsedError;

  /// Serializes this UsageInstructions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsageInstructions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsageInstructionsCopyWith<UsageInstructions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageInstructionsCopyWith<$Res> {
  factory $UsageInstructionsCopyWith(
    UsageInstructions value,
    $Res Function(UsageInstructions) then,
  ) = _$UsageInstructionsCopyWithImpl<$Res, UsageInstructions>;
  @useResult
  $Res call({
    String dosage,
    String timing,
    String frequency,
    String duration,
    String instructions,
    String precautions,
    String? contraindications,
  });
}

/// @nodoc
class _$UsageInstructionsCopyWithImpl<$Res, $Val extends UsageInstructions>
    implements $UsageInstructionsCopyWith<$Res> {
  _$UsageInstructionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsageInstructions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dosage = null,
    Object? timing = null,
    Object? frequency = null,
    Object? duration = null,
    Object? instructions = null,
    Object? precautions = null,
    Object? contraindications = freezed,
  }) {
    return _then(
      _value.copyWith(
            dosage:
                null == dosage
                    ? _value.dosage
                    : dosage // ignore: cast_nullable_to_non_nullable
                        as String,
            timing:
                null == timing
                    ? _value.timing
                    : timing // ignore: cast_nullable_to_non_nullable
                        as String,
            frequency:
                null == frequency
                    ? _value.frequency
                    : frequency // ignore: cast_nullable_to_non_nullable
                        as String,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as String,
            instructions:
                null == instructions
                    ? _value.instructions
                    : instructions // ignore: cast_nullable_to_non_nullable
                        as String,
            precautions:
                null == precautions
                    ? _value.precautions
                    : precautions // ignore: cast_nullable_to_non_nullable
                        as String,
            contraindications:
                freezed == contraindications
                    ? _value.contraindications
                    : contraindications // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UsageInstructionsImplCopyWith<$Res>
    implements $UsageInstructionsCopyWith<$Res> {
  factory _$$UsageInstructionsImplCopyWith(
    _$UsageInstructionsImpl value,
    $Res Function(_$UsageInstructionsImpl) then,
  ) = __$$UsageInstructionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String dosage,
    String timing,
    String frequency,
    String duration,
    String instructions,
    String precautions,
    String? contraindications,
  });
}

/// @nodoc
class __$$UsageInstructionsImplCopyWithImpl<$Res>
    extends _$UsageInstructionsCopyWithImpl<$Res, _$UsageInstructionsImpl>
    implements _$$UsageInstructionsImplCopyWith<$Res> {
  __$$UsageInstructionsImplCopyWithImpl(
    _$UsageInstructionsImpl _value,
    $Res Function(_$UsageInstructionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UsageInstructions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dosage = null,
    Object? timing = null,
    Object? frequency = null,
    Object? duration = null,
    Object? instructions = null,
    Object? precautions = null,
    Object? contraindications = freezed,
  }) {
    return _then(
      _$UsageInstructionsImpl(
        dosage:
            null == dosage
                ? _value.dosage
                : dosage // ignore: cast_nullable_to_non_nullable
                    as String,
        timing:
            null == timing
                ? _value.timing
                : timing // ignore: cast_nullable_to_non_nullable
                    as String,
        frequency:
            null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                    as String,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as String,
        instructions:
            null == instructions
                ? _value.instructions
                : instructions // ignore: cast_nullable_to_non_nullable
                    as String,
        precautions:
            null == precautions
                ? _value.precautions
                : precautions // ignore: cast_nullable_to_non_nullable
                    as String,
        contraindications:
            freezed == contraindications
                ? _value.contraindications
                : contraindications // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageInstructionsImpl implements _UsageInstructions {
  const _$UsageInstructionsImpl({
    required this.dosage,
    required this.timing,
    required this.frequency,
    required this.duration,
    required this.instructions,
    required this.precautions,
    this.contraindications,
  });

  factory _$UsageInstructionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageInstructionsImplFromJson(json);

  @override
  final String dosage;
  @override
  final String timing;
  @override
  final String frequency;
  @override
  final String duration;
  @override
  final String instructions;
  @override
  final String precautions;
  @override
  final String? contraindications;

  @override
  String toString() {
    return 'UsageInstructions(dosage: $dosage, timing: $timing, frequency: $frequency, duration: $duration, instructions: $instructions, precautions: $precautions, contraindications: $contraindications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageInstructionsImpl &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.precautions, precautions) ||
                other.precautions == precautions) &&
            (identical(other.contraindications, contraindications) ||
                other.contraindications == contraindications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dosage,
    timing,
    frequency,
    duration,
    instructions,
    precautions,
    contraindications,
  );

  /// Create a copy of UsageInstructions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageInstructionsImplCopyWith<_$UsageInstructionsImpl> get copyWith =>
      __$$UsageInstructionsImplCopyWithImpl<_$UsageInstructionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageInstructionsImplToJson(this);
  }
}

abstract class _UsageInstructions implements UsageInstructions {
  const factory _UsageInstructions({
    required final String dosage,
    required final String timing,
    required final String frequency,
    required final String duration,
    required final String instructions,
    required final String precautions,
    final String? contraindications,
  }) = _$UsageInstructionsImpl;

  factory _UsageInstructions.fromJson(Map<String, dynamic> json) =
      _$UsageInstructionsImpl.fromJson;

  @override
  String get dosage;
  @override
  String get timing;
  @override
  String get frequency;
  @override
  String get duration;
  @override
  String get instructions;
  @override
  String get precautions;
  @override
  String? get contraindications;

  /// Create a copy of UsageInstructions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsageInstructionsImplCopyWith<_$UsageInstructionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
