// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) {
  return _SearchResults.fromJson(json);
}

/// @nodoc
mixin _$SearchResults {
  List<Remedy> get remedies => throw _privateConstructorUsedError;
  List<Condition> get conditions => throw _privateConstructorUsedError;
  List<SymptomSearchResult> get symptomResults =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this SearchResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultsCopyWith<SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
    SearchResults value,
    $Res Function(SearchResults) then,
  ) = _$SearchResultsCopyWithImpl<$Res, SearchResults>;
  @useResult
  $Res call({
    List<Remedy> remedies,
    List<Condition> conditions,
    List<SymptomSearchResult> symptomResults,
    String? errorMessage,
  });
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res, $Val extends SearchResults>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedies = null,
    Object? conditions = null,
    Object? symptomResults = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            remedies:
                null == remedies
                    ? _value.remedies
                    : remedies // ignore: cast_nullable_to_non_nullable
                        as List<Remedy>,
            conditions:
                null == conditions
                    ? _value.conditions
                    : conditions // ignore: cast_nullable_to_non_nullable
                        as List<Condition>,
            symptomResults:
                null == symptomResults
                    ? _value.symptomResults
                    : symptomResults // ignore: cast_nullable_to_non_nullable
                        as List<SymptomSearchResult>,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchResultsImplCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$$SearchResultsImplCopyWith(
    _$SearchResultsImpl value,
    $Res Function(_$SearchResultsImpl) then,
  ) = __$$SearchResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Remedy> remedies,
    List<Condition> conditions,
    List<SymptomSearchResult> symptomResults,
    String? errorMessage,
  });
}

/// @nodoc
class __$$SearchResultsImplCopyWithImpl<$Res>
    extends _$SearchResultsCopyWithImpl<$Res, _$SearchResultsImpl>
    implements _$$SearchResultsImplCopyWith<$Res> {
  __$$SearchResultsImplCopyWithImpl(
    _$SearchResultsImpl _value,
    $Res Function(_$SearchResultsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedies = null,
    Object? conditions = null,
    Object? symptomResults = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$SearchResultsImpl(
        remedies:
            null == remedies
                ? _value._remedies
                : remedies // ignore: cast_nullable_to_non_nullable
                    as List<Remedy>,
        conditions:
            null == conditions
                ? _value._conditions
                : conditions // ignore: cast_nullable_to_non_nullable
                    as List<Condition>,
        symptomResults:
            null == symptomResults
                ? _value._symptomResults
                : symptomResults // ignore: cast_nullable_to_non_nullable
                    as List<SymptomSearchResult>,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultsImpl implements _SearchResults {
  const _$SearchResultsImpl({
    final List<Remedy> remedies = const [],
    final List<Condition> conditions = const [],
    final List<SymptomSearchResult> symptomResults = const [],
    this.errorMessage,
  }) : _remedies = remedies,
       _conditions = conditions,
       _symptomResults = symptomResults;

  factory _$SearchResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultsImplFromJson(json);

  final List<Remedy> _remedies;
  @override
  @JsonKey()
  List<Remedy> get remedies {
    if (_remedies is EqualUnmodifiableListView) return _remedies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remedies);
  }

  final List<Condition> _conditions;
  @override
  @JsonKey()
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  final List<SymptomSearchResult> _symptomResults;
  @override
  @JsonKey()
  List<SymptomSearchResult> get symptomResults {
    if (_symptomResults is EqualUnmodifiableListView) return _symptomResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptomResults);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchResults(remedies: $remedies, conditions: $conditions, symptomResults: $symptomResults, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultsImpl &&
            const DeepCollectionEquality().equals(other._remedies, _remedies) &&
            const DeepCollectionEquality().equals(
              other._conditions,
              _conditions,
            ) &&
            const DeepCollectionEquality().equals(
              other._symptomResults,
              _symptomResults,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_remedies),
    const DeepCollectionEquality().hash(_conditions),
    const DeepCollectionEquality().hash(_symptomResults),
    errorMessage,
  );

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      __$$SearchResultsImplCopyWithImpl<_$SearchResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultsImplToJson(this);
  }
}

abstract class _SearchResults implements SearchResults {
  const factory _SearchResults({
    final List<Remedy> remedies,
    final List<Condition> conditions,
    final List<SymptomSearchResult> symptomResults,
    final String? errorMessage,
  }) = _$SearchResultsImpl;

  factory _SearchResults.fromJson(Map<String, dynamic> json) =
      _$SearchResultsImpl.fromJson;

  @override
  List<Remedy> get remedies;
  @override
  List<Condition> get conditions;
  @override
  List<SymptomSearchResult> get symptomResults;
  @override
  String? get errorMessage;

  /// Create a copy of SearchResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
