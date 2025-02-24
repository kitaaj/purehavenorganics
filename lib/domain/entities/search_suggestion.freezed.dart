// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchSuggestion _$SearchSuggestionFromJson(Map<String, dynamic> json) {
  return _SearchSuggestion.fromJson(json);
}

/// @nodoc
mixin _$SearchSuggestion {
  String get suggestion => throw _privateConstructorUsedError;
  String get suggestionType => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  double get relevanceScore => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this SearchSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchSuggestionCopyWith<SearchSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSuggestionCopyWith<$Res> {
  factory $SearchSuggestionCopyWith(
    SearchSuggestion value,
    $Res Function(SearchSuggestion) then,
  ) = _$SearchSuggestionCopyWithImpl<$Res, SearchSuggestion>;
  @useResult
  $Res call({
    String suggestion,
    String suggestionType,
    String? category,
    double relevanceScore,
    Map<String, dynamic>? additionalInfo,
  });
}

/// @nodoc
class _$SearchSuggestionCopyWithImpl<$Res, $Val extends SearchSuggestion>
    implements $SearchSuggestionCopyWith<$Res> {
  _$SearchSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestion = null,
    Object? suggestionType = null,
    Object? category = freezed,
    Object? relevanceScore = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            suggestion:
                null == suggestion
                    ? _value.suggestion
                    : suggestion // ignore: cast_nullable_to_non_nullable
                        as String,
            suggestionType:
                null == suggestionType
                    ? _value.suggestionType
                    : suggestionType // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String?,
            relevanceScore:
                null == relevanceScore
                    ? _value.relevanceScore
                    : relevanceScore // ignore: cast_nullable_to_non_nullable
                        as double,
            additionalInfo:
                freezed == additionalInfo
                    ? _value.additionalInfo
                    : additionalInfo // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchSuggestionImplCopyWith<$Res>
    implements $SearchSuggestionCopyWith<$Res> {
  factory _$$SearchSuggestionImplCopyWith(
    _$SearchSuggestionImpl value,
    $Res Function(_$SearchSuggestionImpl) then,
  ) = __$$SearchSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String suggestion,
    String suggestionType,
    String? category,
    double relevanceScore,
    Map<String, dynamic>? additionalInfo,
  });
}

/// @nodoc
class __$$SearchSuggestionImplCopyWithImpl<$Res>
    extends _$SearchSuggestionCopyWithImpl<$Res, _$SearchSuggestionImpl>
    implements _$$SearchSuggestionImplCopyWith<$Res> {
  __$$SearchSuggestionImplCopyWithImpl(
    _$SearchSuggestionImpl _value,
    $Res Function(_$SearchSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestion = null,
    Object? suggestionType = null,
    Object? category = freezed,
    Object? relevanceScore = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(
      _$SearchSuggestionImpl(
        suggestion:
            null == suggestion
                ? _value.suggestion
                : suggestion // ignore: cast_nullable_to_non_nullable
                    as String,
        suggestionType:
            null == suggestionType
                ? _value.suggestionType
                : suggestionType // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String?,
        relevanceScore:
            null == relevanceScore
                ? _value.relevanceScore
                : relevanceScore // ignore: cast_nullable_to_non_nullable
                    as double,
        additionalInfo:
            freezed == additionalInfo
                ? _value._additionalInfo
                : additionalInfo // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchSuggestionImpl implements _SearchSuggestion {
  const _$SearchSuggestionImpl({
    required this.suggestion,
    required this.suggestionType,
    this.category,
    required this.relevanceScore,
    final Map<String, dynamic>? additionalInfo,
  }) : _additionalInfo = additionalInfo;

  factory _$SearchSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchSuggestionImplFromJson(json);

  @override
  final String suggestion;
  @override
  final String suggestionType;
  @override
  final String? category;
  @override
  final double relevanceScore;
  final Map<String, dynamic>? _additionalInfo;
  @override
  Map<String, dynamic>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SearchSuggestion(suggestion: $suggestion, suggestionType: $suggestionType, category: $category, relevanceScore: $relevanceScore, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuggestionImpl &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion) &&
            (identical(other.suggestionType, suggestionType) ||
                other.suggestionType == suggestionType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.relevanceScore, relevanceScore) ||
                other.relevanceScore == relevanceScore) &&
            const DeepCollectionEquality().equals(
              other._additionalInfo,
              _additionalInfo,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    suggestion,
    suggestionType,
    category,
    relevanceScore,
    const DeepCollectionEquality().hash(_additionalInfo),
  );

  /// Create a copy of SearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuggestionImplCopyWith<_$SearchSuggestionImpl> get copyWith =>
      __$$SearchSuggestionImplCopyWithImpl<_$SearchSuggestionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchSuggestionImplToJson(this);
  }
}

abstract class _SearchSuggestion implements SearchSuggestion {
  const factory _SearchSuggestion({
    required final String suggestion,
    required final String suggestionType,
    final String? category,
    required final double relevanceScore,
    final Map<String, dynamic>? additionalInfo,
  }) = _$SearchSuggestionImpl;

  factory _SearchSuggestion.fromJson(Map<String, dynamic> json) =
      _$SearchSuggestionImpl.fromJson;

  @override
  String get suggestion;
  @override
  String get suggestionType;
  @override
  String? get category;
  @override
  double get relevanceScore;
  @override
  Map<String, dynamic>? get additionalInfo;

  /// Create a copy of SearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuggestionImplCopyWith<_$SearchSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
