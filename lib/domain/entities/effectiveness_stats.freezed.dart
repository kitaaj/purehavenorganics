// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effectiveness_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EffectivenessStats _$EffectivenessStatsFromJson(Map<String, dynamic> json) {
  return _EffectivenessStats.fromJson(json);
}

/// @nodoc
mixin _$EffectivenessStats {
  int? get averageRating => throw _privateConstructorUsedError;
  int? get totalConditions => throw _privateConstructorUsedError;
  int? get evidenceBasedCount => throw _privateConstructorUsedError;

  /// Serializes this EffectivenessStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EffectivenessStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EffectivenessStatsCopyWith<EffectivenessStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectivenessStatsCopyWith<$Res> {
  factory $EffectivenessStatsCopyWith(
    EffectivenessStats value,
    $Res Function(EffectivenessStats) then,
  ) = _$EffectivenessStatsCopyWithImpl<$Res, EffectivenessStats>;
  @useResult
  $Res call({
    int? averageRating,
    int? totalConditions,
    int? evidenceBasedCount,
  });
}

/// @nodoc
class _$EffectivenessStatsCopyWithImpl<$Res, $Val extends EffectivenessStats>
    implements $EffectivenessStatsCopyWith<$Res> {
  _$EffectivenessStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EffectivenessStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = freezed,
    Object? totalConditions = freezed,
    Object? evidenceBasedCount = freezed,
  }) {
    return _then(
      _value.copyWith(
            averageRating:
                freezed == averageRating
                    ? _value.averageRating
                    : averageRating // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalConditions:
                freezed == totalConditions
                    ? _value.totalConditions
                    : totalConditions // ignore: cast_nullable_to_non_nullable
                        as int?,
            evidenceBasedCount:
                freezed == evidenceBasedCount
                    ? _value.evidenceBasedCount
                    : evidenceBasedCount // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EffectivenessStatsImplCopyWith<$Res>
    implements $EffectivenessStatsCopyWith<$Res> {
  factory _$$EffectivenessStatsImplCopyWith(
    _$EffectivenessStatsImpl value,
    $Res Function(_$EffectivenessStatsImpl) then,
  ) = __$$EffectivenessStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? averageRating,
    int? totalConditions,
    int? evidenceBasedCount,
  });
}

/// @nodoc
class __$$EffectivenessStatsImplCopyWithImpl<$Res>
    extends _$EffectivenessStatsCopyWithImpl<$Res, _$EffectivenessStatsImpl>
    implements _$$EffectivenessStatsImplCopyWith<$Res> {
  __$$EffectivenessStatsImplCopyWithImpl(
    _$EffectivenessStatsImpl _value,
    $Res Function(_$EffectivenessStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EffectivenessStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = freezed,
    Object? totalConditions = freezed,
    Object? evidenceBasedCount = freezed,
  }) {
    return _then(
      _$EffectivenessStatsImpl(
        averageRating:
            freezed == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalConditions:
            freezed == totalConditions
                ? _value.totalConditions
                : totalConditions // ignore: cast_nullable_to_non_nullable
                    as int?,
        evidenceBasedCount:
            freezed == evidenceBasedCount
                ? _value.evidenceBasedCount
                : evidenceBasedCount // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EffectivenessStatsImpl implements _EffectivenessStats {
  const _$EffectivenessStatsImpl({
    this.averageRating,
    this.totalConditions,
    this.evidenceBasedCount,
  });

  factory _$EffectivenessStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EffectivenessStatsImplFromJson(json);

  @override
  final int? averageRating;
  @override
  final int? totalConditions;
  @override
  final int? evidenceBasedCount;

  @override
  String toString() {
    return 'EffectivenessStats(averageRating: $averageRating, totalConditions: $totalConditions, evidenceBasedCount: $evidenceBasedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EffectivenessStatsImpl &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalConditions, totalConditions) ||
                other.totalConditions == totalConditions) &&
            (identical(other.evidenceBasedCount, evidenceBasedCount) ||
                other.evidenceBasedCount == evidenceBasedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    averageRating,
    totalConditions,
    evidenceBasedCount,
  );

  /// Create a copy of EffectivenessStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EffectivenessStatsImplCopyWith<_$EffectivenessStatsImpl> get copyWith =>
      __$$EffectivenessStatsImplCopyWithImpl<_$EffectivenessStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EffectivenessStatsImplToJson(this);
  }
}

abstract class _EffectivenessStats implements EffectivenessStats {
  const factory _EffectivenessStats({
    final int? averageRating,
    final int? totalConditions,
    final int? evidenceBasedCount,
  }) = _$EffectivenessStatsImpl;

  factory _EffectivenessStats.fromJson(Map<String, dynamic> json) =
      _$EffectivenessStatsImpl.fromJson;

  @override
  int? get averageRating;
  @override
  int? get totalConditions;
  @override
  int? get evidenceBasedCount;

  /// Create a copy of EffectivenessStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EffectivenessStatsImplCopyWith<_$EffectivenessStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
