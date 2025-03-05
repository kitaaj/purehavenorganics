// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConditionSearchResult _$ConditionSearchResultFromJson(
  Map<String, dynamic> json,
) {
  return _ConditionSearchResult.fromJson(json);
}

/// @nodoc
mixin _$ConditionSearchResult {
  @HiveField(0)
  String get conditionName => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get conditionDescription => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String> get symptoms => throw _privateConstructorUsedError;
  @HiveField(3)
  int get remedyCount => throw _privateConstructorUsedError;
  @HiveField(4)
  int get avgEffectiveness => throw _privateConstructorUsedError;
  @HiveField(5)
  Map<String, dynamic> get topRemedies => throw _privateConstructorUsedError;

  /// Serializes this ConditionSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConditionSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionSearchResultCopyWith<ConditionSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionSearchResultCopyWith<$Res> {
  factory $ConditionSearchResultCopyWith(
    ConditionSearchResult value,
    $Res Function(ConditionSearchResult) then,
  ) = _$ConditionSearchResultCopyWithImpl<$Res, ConditionSearchResult>;
  @useResult
  $Res call({
    @HiveField(0) String conditionName,
    @HiveField(1) String? conditionDescription,
    @HiveField(2) List<String> symptoms,
    @HiveField(3) int remedyCount,
    @HiveField(4) int avgEffectiveness,
    @HiveField(5) Map<String, dynamic> topRemedies,
  });
}

/// @nodoc
class _$ConditionSearchResultCopyWithImpl<
  $Res,
  $Val extends ConditionSearchResult
>
    implements $ConditionSearchResultCopyWith<$Res> {
  _$ConditionSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConditionSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionName = null,
    Object? conditionDescription = freezed,
    Object? symptoms = null,
    Object? remedyCount = null,
    Object? avgEffectiveness = null,
    Object? topRemedies = null,
  }) {
    return _then(
      _value.copyWith(
            conditionName:
                null == conditionName
                    ? _value.conditionName
                    : conditionName // ignore: cast_nullable_to_non_nullable
                        as String,
            conditionDescription:
                freezed == conditionDescription
                    ? _value.conditionDescription
                    : conditionDescription // ignore: cast_nullable_to_non_nullable
                        as String?,
            symptoms:
                null == symptoms
                    ? _value.symptoms
                    : symptoms // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            remedyCount:
                null == remedyCount
                    ? _value.remedyCount
                    : remedyCount // ignore: cast_nullable_to_non_nullable
                        as int,
            avgEffectiveness:
                null == avgEffectiveness
                    ? _value.avgEffectiveness
                    : avgEffectiveness // ignore: cast_nullable_to_non_nullable
                        as int,
            topRemedies:
                null == topRemedies
                    ? _value.topRemedies
                    : topRemedies // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConditionSearchResultImplCopyWith<$Res>
    implements $ConditionSearchResultCopyWith<$Res> {
  factory _$$ConditionSearchResultImplCopyWith(
    _$ConditionSearchResultImpl value,
    $Res Function(_$ConditionSearchResultImpl) then,
  ) = __$$ConditionSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) String conditionName,
    @HiveField(1) String? conditionDescription,
    @HiveField(2) List<String> symptoms,
    @HiveField(3) int remedyCount,
    @HiveField(4) int avgEffectiveness,
    @HiveField(5) Map<String, dynamic> topRemedies,
  });
}

/// @nodoc
class __$$ConditionSearchResultImplCopyWithImpl<$Res>
    extends
        _$ConditionSearchResultCopyWithImpl<$Res, _$ConditionSearchResultImpl>
    implements _$$ConditionSearchResultImplCopyWith<$Res> {
  __$$ConditionSearchResultImplCopyWithImpl(
    _$ConditionSearchResultImpl _value,
    $Res Function(_$ConditionSearchResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConditionSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionName = null,
    Object? conditionDescription = freezed,
    Object? symptoms = null,
    Object? remedyCount = null,
    Object? avgEffectiveness = null,
    Object? topRemedies = null,
  }) {
    return _then(
      _$ConditionSearchResultImpl(
        conditionName:
            null == conditionName
                ? _value.conditionName
                : conditionName // ignore: cast_nullable_to_non_nullable
                    as String,
        conditionDescription:
            freezed == conditionDescription
                ? _value.conditionDescription
                : conditionDescription // ignore: cast_nullable_to_non_nullable
                    as String?,
        symptoms:
            null == symptoms
                ? _value._symptoms
                : symptoms // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        remedyCount:
            null == remedyCount
                ? _value.remedyCount
                : remedyCount // ignore: cast_nullable_to_non_nullable
                    as int,
        avgEffectiveness:
            null == avgEffectiveness
                ? _value.avgEffectiveness
                : avgEffectiveness // ignore: cast_nullable_to_non_nullable
                    as int,
        topRemedies:
            null == topRemedies
                ? _value._topRemedies
                : topRemedies // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionSearchResultImpl implements _ConditionSearchResult {
  const _$ConditionSearchResultImpl({
    @HiveField(0) required this.conditionName,
    @HiveField(1) this.conditionDescription,
    @HiveField(2) required final List<String> symptoms,
    @HiveField(3) required this.remedyCount,
    @HiveField(4) required this.avgEffectiveness,
    @HiveField(5) required final Map<String, dynamic> topRemedies,
  }) : _symptoms = symptoms,
       _topRemedies = topRemedies;

  factory _$ConditionSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionSearchResultImplFromJson(json);

  @override
  @HiveField(0)
  final String conditionName;
  @override
  @HiveField(1)
  final String? conditionDescription;
  final List<String> _symptoms;
  @override
  @HiveField(2)
  List<String> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  @HiveField(3)
  final int remedyCount;
  @override
  @HiveField(4)
  final int avgEffectiveness;
  final Map<String, dynamic> _topRemedies;
  @override
  @HiveField(5)
  Map<String, dynamic> get topRemedies {
    if (_topRemedies is EqualUnmodifiableMapView) return _topRemedies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_topRemedies);
  }

  @override
  String toString() {
    return 'ConditionSearchResult(conditionName: $conditionName, conditionDescription: $conditionDescription, symptoms: $symptoms, remedyCount: $remedyCount, avgEffectiveness: $avgEffectiveness, topRemedies: $topRemedies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionSearchResultImpl &&
            (identical(other.conditionName, conditionName) ||
                other.conditionName == conditionName) &&
            (identical(other.conditionDescription, conditionDescription) ||
                other.conditionDescription == conditionDescription) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.remedyCount, remedyCount) ||
                other.remedyCount == remedyCount) &&
            (identical(other.avgEffectiveness, avgEffectiveness) ||
                other.avgEffectiveness == avgEffectiveness) &&
            const DeepCollectionEquality().equals(
              other._topRemedies,
              _topRemedies,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    conditionName,
    conditionDescription,
    const DeepCollectionEquality().hash(_symptoms),
    remedyCount,
    avgEffectiveness,
    const DeepCollectionEquality().hash(_topRemedies),
  );

  /// Create a copy of ConditionSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionSearchResultImplCopyWith<_$ConditionSearchResultImpl>
  get copyWith =>
      __$$ConditionSearchResultImplCopyWithImpl<_$ConditionSearchResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionSearchResultImplToJson(this);
  }
}

abstract class _ConditionSearchResult implements ConditionSearchResult {
  const factory _ConditionSearchResult({
    @HiveField(0) required final String conditionName,
    @HiveField(1) final String? conditionDescription,
    @HiveField(2) required final List<String> symptoms,
    @HiveField(3) required final int remedyCount,
    @HiveField(4) required final int avgEffectiveness,
    @HiveField(5) required final Map<String, dynamic> topRemedies,
  }) = _$ConditionSearchResultImpl;

  factory _ConditionSearchResult.fromJson(Map<String, dynamic> json) =
      _$ConditionSearchResultImpl.fromJson;

  @override
  @HiveField(0)
  String get conditionName;
  @override
  @HiveField(1)
  String? get conditionDescription;
  @override
  @HiveField(2)
  List<String> get symptoms;
  @override
  @HiveField(3)
  int get remedyCount;
  @override
  @HiveField(4)
  int get avgEffectiveness;
  @override
  @HiveField(5)
  Map<String, dynamic> get topRemedies;

  /// Create a copy of ConditionSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionSearchResultImplCopyWith<_$ConditionSearchResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
