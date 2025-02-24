// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchFilters _$SearchFiltersFromJson(Map<String, dynamic> json) {
  return _SearchFilters.fromJson(json);
}

/// @nodoc
mixin _$SearchFilters {
  String? get category => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get scientificEvidenceOnly => throw _privateConstructorUsedError;
  int? get minEffectiveness => throw _privateConstructorUsedError;

  /// Serializes this SearchFilters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchFiltersCopyWith<SearchFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFiltersCopyWith<$Res> {
  factory $SearchFiltersCopyWith(
    SearchFilters value,
    $Res Function(SearchFilters) then,
  ) = _$SearchFiltersCopyWithImpl<$Res, SearchFilters>;
  @useResult
  $Res call({
    String? category,
    List<String> tags,
    bool scientificEvidenceOnly,
    int? minEffectiveness,
  });
}

/// @nodoc
class _$SearchFiltersCopyWithImpl<$Res, $Val extends SearchFilters>
    implements $SearchFiltersCopyWith<$Res> {
  _$SearchFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? tags = null,
    Object? scientificEvidenceOnly = null,
    Object? minEffectiveness = freezed,
  }) {
    return _then(
      _value.copyWith(
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String?,
            tags:
                null == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            scientificEvidenceOnly:
                null == scientificEvidenceOnly
                    ? _value.scientificEvidenceOnly
                    : scientificEvidenceOnly // ignore: cast_nullable_to_non_nullable
                        as bool,
            minEffectiveness:
                freezed == minEffectiveness
                    ? _value.minEffectiveness
                    : minEffectiveness // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchFiltersImplCopyWith<$Res>
    implements $SearchFiltersCopyWith<$Res> {
  factory _$$SearchFiltersImplCopyWith(
    _$SearchFiltersImpl value,
    $Res Function(_$SearchFiltersImpl) then,
  ) = __$$SearchFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? category,
    List<String> tags,
    bool scientificEvidenceOnly,
    int? minEffectiveness,
  });
}

/// @nodoc
class __$$SearchFiltersImplCopyWithImpl<$Res>
    extends _$SearchFiltersCopyWithImpl<$Res, _$SearchFiltersImpl>
    implements _$$SearchFiltersImplCopyWith<$Res> {
  __$$SearchFiltersImplCopyWithImpl(
    _$SearchFiltersImpl _value,
    $Res Function(_$SearchFiltersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? tags = null,
    Object? scientificEvidenceOnly = null,
    Object? minEffectiveness = freezed,
  }) {
    return _then(
      _$SearchFiltersImpl(
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String?,
        tags:
            null == tags
                ? _value._tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        scientificEvidenceOnly:
            null == scientificEvidenceOnly
                ? _value.scientificEvidenceOnly
                : scientificEvidenceOnly // ignore: cast_nullable_to_non_nullable
                    as bool,
        minEffectiveness:
            freezed == minEffectiveness
                ? _value.minEffectiveness
                : minEffectiveness // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFiltersImpl implements _SearchFilters {
  const _$SearchFiltersImpl({
    this.category,
    final List<String> tags = const [],
    this.scientificEvidenceOnly = false,
    this.minEffectiveness,
  }) : _tags = tags;

  factory _$SearchFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchFiltersImplFromJson(json);

  @override
  final String? category;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final bool scientificEvidenceOnly;
  @override
  final int? minEffectiveness;

  @override
  String toString() {
    return 'SearchFilters(category: $category, tags: $tags, scientificEvidenceOnly: $scientificEvidenceOnly, minEffectiveness: $minEffectiveness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFiltersImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.scientificEvidenceOnly, scientificEvidenceOnly) ||
                other.scientificEvidenceOnly == scientificEvidenceOnly) &&
            (identical(other.minEffectiveness, minEffectiveness) ||
                other.minEffectiveness == minEffectiveness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    category,
    const DeepCollectionEquality().hash(_tags),
    scientificEvidenceOnly,
    minEffectiveness,
  );

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFiltersImplCopyWith<_$SearchFiltersImpl> get copyWith =>
      __$$SearchFiltersImplCopyWithImpl<_$SearchFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFiltersImplToJson(this);
  }
}

abstract class _SearchFilters implements SearchFilters {
  const factory _SearchFilters({
    final String? category,
    final List<String> tags,
    final bool scientificEvidenceOnly,
    final int? minEffectiveness,
  }) = _$SearchFiltersImpl;

  factory _SearchFilters.fromJson(Map<String, dynamic> json) =
      _$SearchFiltersImpl.fromJson;

  @override
  String? get category;
  @override
  List<String> get tags;
  @override
  bool get scientificEvidenceOnly;
  @override
  int? get minEffectiveness;

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFiltersImplCopyWith<_$SearchFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
