// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_remedy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RelatedRemedy _$RelatedRemedyFromJson(Map<String, dynamic> json) {
  return _RelatedRemedy.fromJson(json);
}

/// @nodoc
mixin _$RelatedRemedy {
  String get relatedRemedyName => throw _privateConstructorUsedError;
  String get relationshipType => throw _privateConstructorUsedError;
  int get relationshipStrength => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this RelatedRemedy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedRemedyCopyWith<RelatedRemedy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedRemedyCopyWith<$Res> {
  factory $RelatedRemedyCopyWith(
    RelatedRemedy value,
    $Res Function(RelatedRemedy) then,
  ) = _$RelatedRemedyCopyWithImpl<$Res, RelatedRemedy>;
  @useResult
  $Res call({
    String relatedRemedyName,
    String relationshipType,
    int relationshipStrength,
    String? notes,
  });
}

/// @nodoc
class _$RelatedRemedyCopyWithImpl<$Res, $Val extends RelatedRemedy>
    implements $RelatedRemedyCopyWith<$Res> {
  _$RelatedRemedyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedRemedyName = null,
    Object? relationshipType = null,
    Object? relationshipStrength = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            relatedRemedyName:
                null == relatedRemedyName
                    ? _value.relatedRemedyName
                    : relatedRemedyName // ignore: cast_nullable_to_non_nullable
                        as String,
            relationshipType:
                null == relationshipType
                    ? _value.relationshipType
                    : relationshipType // ignore: cast_nullable_to_non_nullable
                        as String,
            relationshipStrength:
                null == relationshipStrength
                    ? _value.relationshipStrength
                    : relationshipStrength // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$RelatedRemedyImplCopyWith<$Res>
    implements $RelatedRemedyCopyWith<$Res> {
  factory _$$RelatedRemedyImplCopyWith(
    _$RelatedRemedyImpl value,
    $Res Function(_$RelatedRemedyImpl) then,
  ) = __$$RelatedRemedyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String relatedRemedyName,
    String relationshipType,
    int relationshipStrength,
    String? notes,
  });
}

/// @nodoc
class __$$RelatedRemedyImplCopyWithImpl<$Res>
    extends _$RelatedRemedyCopyWithImpl<$Res, _$RelatedRemedyImpl>
    implements _$$RelatedRemedyImplCopyWith<$Res> {
  __$$RelatedRemedyImplCopyWithImpl(
    _$RelatedRemedyImpl _value,
    $Res Function(_$RelatedRemedyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RelatedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedRemedyName = null,
    Object? relationshipType = null,
    Object? relationshipStrength = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$RelatedRemedyImpl(
        relatedRemedyName:
            null == relatedRemedyName
                ? _value.relatedRemedyName
                : relatedRemedyName // ignore: cast_nullable_to_non_nullable
                    as String,
        relationshipType:
            null == relationshipType
                ? _value.relationshipType
                : relationshipType // ignore: cast_nullable_to_non_nullable
                    as String,
        relationshipStrength:
            null == relationshipStrength
                ? _value.relationshipStrength
                : relationshipStrength // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$RelatedRemedyImpl implements _RelatedRemedy {
  const _$RelatedRemedyImpl({
    required this.relatedRemedyName,
    required this.relationshipType,
    required this.relationshipStrength,
    this.notes,
  });

  factory _$RelatedRemedyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedRemedyImplFromJson(json);

  @override
  final String relatedRemedyName;
  @override
  final String relationshipType;
  @override
  final int relationshipStrength;
  @override
  final String? notes;

  @override
  String toString() {
    return 'RelatedRemedy(relatedRemedyName: $relatedRemedyName, relationshipType: $relationshipType, relationshipStrength: $relationshipStrength, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedRemedyImpl &&
            (identical(other.relatedRemedyName, relatedRemedyName) ||
                other.relatedRemedyName == relatedRemedyName) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            (identical(other.relationshipStrength, relationshipStrength) ||
                other.relationshipStrength == relationshipStrength) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    relatedRemedyName,
    relationshipType,
    relationshipStrength,
    notes,
  );

  /// Create a copy of RelatedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedRemedyImplCopyWith<_$RelatedRemedyImpl> get copyWith =>
      __$$RelatedRemedyImplCopyWithImpl<_$RelatedRemedyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedRemedyImplToJson(this);
  }
}

abstract class _RelatedRemedy implements RelatedRemedy {
  const factory _RelatedRemedy({
    required final String relatedRemedyName,
    required final String relationshipType,
    required final int relationshipStrength,
    final String? notes,
  }) = _$RelatedRemedyImpl;

  factory _RelatedRemedy.fromJson(Map<String, dynamic> json) =
      _$RelatedRemedyImpl.fromJson;

  @override
  String get relatedRemedyName;
  @override
  String get relationshipType;
  @override
  int get relationshipStrength;
  @override
  String? get notes;

  /// Create a copy of RelatedRemedy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedRemedyImplCopyWith<_$RelatedRemedyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
