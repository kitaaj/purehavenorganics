// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymptomSearchResult _$SymptomSearchResultFromJson(Map<String, dynamic> json) {
  return _SymptomSearchResult.fromJson(json);
}

/// @nodoc
mixin _$SymptomSearchResult {
  String get conditionName => throw _privateConstructorUsedError;
  List<String> get matchingSymptoms => throw _privateConstructorUsedError;
  int get matchCount => throw _privateConstructorUsedError;
  Map<String, dynamic> get recommendedRemedies =>
      throw _privateConstructorUsedError;

  /// Serializes this SymptomSearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomSearchResultCopyWith<SymptomSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomSearchResultCopyWith<$Res> {
  factory $SymptomSearchResultCopyWith(
    SymptomSearchResult value,
    $Res Function(SymptomSearchResult) then,
  ) = _$SymptomSearchResultCopyWithImpl<$Res, SymptomSearchResult>;
  @useResult
  $Res call({
    String conditionName,
    List<String> matchingSymptoms,
    int matchCount,
    Map<String, dynamic> recommendedRemedies,
  });
}

/// @nodoc
class _$SymptomSearchResultCopyWithImpl<$Res, $Val extends SymptomSearchResult>
    implements $SymptomSearchResultCopyWith<$Res> {
  _$SymptomSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionName = null,
    Object? matchingSymptoms = null,
    Object? matchCount = null,
    Object? recommendedRemedies = null,
  }) {
    return _then(
      _value.copyWith(
            conditionName:
                null == conditionName
                    ? _value.conditionName
                    : conditionName // ignore: cast_nullable_to_non_nullable
                        as String,
            matchingSymptoms:
                null == matchingSymptoms
                    ? _value.matchingSymptoms
                    : matchingSymptoms // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            matchCount:
                null == matchCount
                    ? _value.matchCount
                    : matchCount // ignore: cast_nullable_to_non_nullable
                        as int,
            recommendedRemedies:
                null == recommendedRemedies
                    ? _value.recommendedRemedies
                    : recommendedRemedies // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SymptomSearchResultImplCopyWith<$Res>
    implements $SymptomSearchResultCopyWith<$Res> {
  factory _$$SymptomSearchResultImplCopyWith(
    _$SymptomSearchResultImpl value,
    $Res Function(_$SymptomSearchResultImpl) then,
  ) = __$$SymptomSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String conditionName,
    List<String> matchingSymptoms,
    int matchCount,
    Map<String, dynamic> recommendedRemedies,
  });
}

/// @nodoc
class __$$SymptomSearchResultImplCopyWithImpl<$Res>
    extends _$SymptomSearchResultCopyWithImpl<$Res, _$SymptomSearchResultImpl>
    implements _$$SymptomSearchResultImplCopyWith<$Res> {
  __$$SymptomSearchResultImplCopyWithImpl(
    _$SymptomSearchResultImpl _value,
    $Res Function(_$SymptomSearchResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionName = null,
    Object? matchingSymptoms = null,
    Object? matchCount = null,
    Object? recommendedRemedies = null,
  }) {
    return _then(
      _$SymptomSearchResultImpl(
        conditionName:
            null == conditionName
                ? _value.conditionName
                : conditionName // ignore: cast_nullable_to_non_nullable
                    as String,
        matchingSymptoms:
            null == matchingSymptoms
                ? _value._matchingSymptoms
                : matchingSymptoms // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        matchCount:
            null == matchCount
                ? _value.matchCount
                : matchCount // ignore: cast_nullable_to_non_nullable
                    as int,
        recommendedRemedies:
            null == recommendedRemedies
                ? _value._recommendedRemedies
                : recommendedRemedies // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomSearchResultImpl implements _SymptomSearchResult {
  const _$SymptomSearchResultImpl({
    required this.conditionName,
    required final List<String> matchingSymptoms,
    required this.matchCount,
    required final Map<String, dynamic> recommendedRemedies,
  }) : _matchingSymptoms = matchingSymptoms,
       _recommendedRemedies = recommendedRemedies;

  factory _$SymptomSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomSearchResultImplFromJson(json);

  @override
  final String conditionName;
  final List<String> _matchingSymptoms;
  @override
  List<String> get matchingSymptoms {
    if (_matchingSymptoms is EqualUnmodifiableListView)
      return _matchingSymptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchingSymptoms);
  }

  @override
  final int matchCount;
  final Map<String, dynamic> _recommendedRemedies;
  @override
  Map<String, dynamic> get recommendedRemedies {
    if (_recommendedRemedies is EqualUnmodifiableMapView)
      return _recommendedRemedies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recommendedRemedies);
  }

  @override
  String toString() {
    return 'SymptomSearchResult(conditionName: $conditionName, matchingSymptoms: $matchingSymptoms, matchCount: $matchCount, recommendedRemedies: $recommendedRemedies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomSearchResultImpl &&
            (identical(other.conditionName, conditionName) ||
                other.conditionName == conditionName) &&
            const DeepCollectionEquality().equals(
              other._matchingSymptoms,
              _matchingSymptoms,
            ) &&
            (identical(other.matchCount, matchCount) ||
                other.matchCount == matchCount) &&
            const DeepCollectionEquality().equals(
              other._recommendedRemedies,
              _recommendedRemedies,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    conditionName,
    const DeepCollectionEquality().hash(_matchingSymptoms),
    matchCount,
    const DeepCollectionEquality().hash(_recommendedRemedies),
  );

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomSearchResultImplCopyWith<_$SymptomSearchResultImpl> get copyWith =>
      __$$SymptomSearchResultImplCopyWithImpl<_$SymptomSearchResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomSearchResultImplToJson(this);
  }
}

abstract class _SymptomSearchResult implements SymptomSearchResult {
  const factory _SymptomSearchResult({
    required final String conditionName,
    required final List<String> matchingSymptoms,
    required final int matchCount,
    required final Map<String, dynamic> recommendedRemedies,
  }) = _$SymptomSearchResultImpl;

  factory _SymptomSearchResult.fromJson(Map<String, dynamic> json) =
      _$SymptomSearchResultImpl.fromJson;

  @override
  String get conditionName;
  @override
  List<String> get matchingSymptoms;
  @override
  int get matchCount;
  @override
  Map<String, dynamic> get recommendedRemedies;

  /// Create a copy of SymptomSearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomSearchResultImplCopyWith<_$SymptomSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
