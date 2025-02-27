// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SavedItems _$SavedItemsFromJson(Map<String, dynamic> json) {
  return _SavedItems.fromJson(json);
}

/// @nodoc
mixin _$SavedItems {
  List<Remedy> get remedies => throw _privateConstructorUsedError;
  List<Condition> get conditions => throw _privateConstructorUsedError;

  /// Serializes this SavedItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedItemsCopyWith<SavedItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedItemsCopyWith<$Res> {
  factory $SavedItemsCopyWith(
    SavedItems value,
    $Res Function(SavedItems) then,
  ) = _$SavedItemsCopyWithImpl<$Res, SavedItems>;
  @useResult
  $Res call({List<Remedy> remedies, List<Condition> conditions});
}

/// @nodoc
class _$SavedItemsCopyWithImpl<$Res, $Val extends SavedItems>
    implements $SavedItemsCopyWith<$Res> {
  _$SavedItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? remedies = null, Object? conditions = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SavedItemsImplCopyWith<$Res>
    implements $SavedItemsCopyWith<$Res> {
  factory _$$SavedItemsImplCopyWith(
    _$SavedItemsImpl value,
    $Res Function(_$SavedItemsImpl) then,
  ) = __$$SavedItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Remedy> remedies, List<Condition> conditions});
}

/// @nodoc
class __$$SavedItemsImplCopyWithImpl<$Res>
    extends _$SavedItemsCopyWithImpl<$Res, _$SavedItemsImpl>
    implements _$$SavedItemsImplCopyWith<$Res> {
  __$$SavedItemsImplCopyWithImpl(
    _$SavedItemsImpl _value,
    $Res Function(_$SavedItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SavedItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? remedies = null, Object? conditions = null}) {
    return _then(
      _$SavedItemsImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedItemsImpl implements _SavedItems {
  const _$SavedItemsImpl({
    final List<Remedy> remedies = const [],
    final List<Condition> conditions = const [],
  }) : _remedies = remedies,
       _conditions = conditions;

  factory _$SavedItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedItemsImplFromJson(json);

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

  @override
  String toString() {
    return 'SavedItems(remedies: $remedies, conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedItemsImpl &&
            const DeepCollectionEquality().equals(other._remedies, _remedies) &&
            const DeepCollectionEquality().equals(
              other._conditions,
              _conditions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_remedies),
    const DeepCollectionEquality().hash(_conditions),
  );

  /// Create a copy of SavedItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedItemsImplCopyWith<_$SavedItemsImpl> get copyWith =>
      __$$SavedItemsImplCopyWithImpl<_$SavedItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedItemsImplToJson(this);
  }
}

abstract class _SavedItems implements SavedItems {
  const factory _SavedItems({
    final List<Remedy> remedies,
    final List<Condition> conditions,
  }) = _$SavedItemsImpl;

  factory _SavedItems.fromJson(Map<String, dynamic> json) =
      _$SavedItemsImpl.fromJson;

  @override
  List<Remedy> get remedies;
  @override
  List<Condition> get conditions;

  /// Create a copy of SavedItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedItemsImplCopyWith<_$SavedItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
