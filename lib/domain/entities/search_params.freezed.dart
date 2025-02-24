// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchParams _$SearchParamsFromJson(Map<String, dynamic> json) {
  return _SearchParams.fromJson(json);
}

/// @nodoc
mixin _$SearchParams {
  String? get searchTerm => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool get forceRefresh => throw _privateConstructorUsedError;

  /// Serializes this SearchParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchParamsCopyWith<SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamsCopyWith<$Res> {
  factory $SearchParamsCopyWith(
    SearchParams value,
    $Res Function(SearchParams) then,
  ) = _$SearchParamsCopyWithImpl<$Res, SearchParams>;
  @useResult
  $Res call({
    String? searchTerm,
    int? categoryId,
    int page,
    int limit,
    bool forceRefresh,
  });
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res, $Val extends SearchParams>
    implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? categoryId = freezed,
    Object? page = null,
    Object? limit = null,
    Object? forceRefresh = null,
  }) {
    return _then(
      _value.copyWith(
            searchTerm:
                freezed == searchTerm
                    ? _value.searchTerm
                    : searchTerm // ignore: cast_nullable_to_non_nullable
                        as String?,
            categoryId:
                freezed == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int?,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            limit:
                null == limit
                    ? _value.limit
                    : limit // ignore: cast_nullable_to_non_nullable
                        as int,
            forceRefresh:
                null == forceRefresh
                    ? _value.forceRefresh
                    : forceRefresh // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchParamsImplCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$$SearchParamsImplCopyWith(
    _$SearchParamsImpl value,
    $Res Function(_$SearchParamsImpl) then,
  ) = __$$SearchParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? searchTerm,
    int? categoryId,
    int page,
    int limit,
    bool forceRefresh,
  });
}

/// @nodoc
class __$$SearchParamsImplCopyWithImpl<$Res>
    extends _$SearchParamsCopyWithImpl<$Res, _$SearchParamsImpl>
    implements _$$SearchParamsImplCopyWith<$Res> {
  __$$SearchParamsImplCopyWithImpl(
    _$SearchParamsImpl _value,
    $Res Function(_$SearchParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? categoryId = freezed,
    Object? page = null,
    Object? limit = null,
    Object? forceRefresh = null,
  }) {
    return _then(
      _$SearchParamsImpl(
        searchTerm:
            freezed == searchTerm
                ? _value.searchTerm
                : searchTerm // ignore: cast_nullable_to_non_nullable
                    as String?,
        categoryId:
            freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int?,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        limit:
            null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                    as int,
        forceRefresh:
            null == forceRefresh
                ? _value.forceRefresh
                : forceRefresh // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchParamsImpl implements _SearchParams {
  const _$SearchParamsImpl({
    this.searchTerm,
    this.categoryId,
    this.page = 1,
    this.limit = 10,
    this.forceRefresh = false,
  });

  factory _$SearchParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchParamsImplFromJson(json);

  @override
  final String? searchTerm;
  @override
  final int? categoryId;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final bool forceRefresh;

  @override
  String toString() {
    return 'SearchParams(searchTerm: $searchTerm, categoryId: $categoryId, page: $page, limit: $limit, forceRefresh: $forceRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParamsImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchTerm,
    categoryId,
    page,
    limit,
    forceRefresh,
  );

  /// Create a copy of SearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParamsImplCopyWith<_$SearchParamsImpl> get copyWith =>
      __$$SearchParamsImplCopyWithImpl<_$SearchParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchParamsImplToJson(this);
  }
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams({
    final String? searchTerm,
    final int? categoryId,
    final int page,
    final int limit,
    final bool forceRefresh,
  }) = _$SearchParamsImpl;

  factory _SearchParams.fromJson(Map<String, dynamic> json) =
      _$SearchParamsImpl.fromJson;

  @override
  String? get searchTerm;
  @override
  int? get categoryId;
  @override
  int get page;
  @override
  int get limit;
  @override
  bool get forceRefresh;

  /// Create a copy of SearchParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchParamsImplCopyWith<_$SearchParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
