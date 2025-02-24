// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedy_combination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemedyCombination _$RemedyCombinationFromJson(Map<String, dynamic> json) {
  return _RemedyCombination.fromJson(json);
}

/// @nodoc
mixin _$RemedyCombination {
  String get primaryRemedy => throw _privateConstructorUsedError;
  String get complementaryRemedy => throw _privateConstructorUsedError;
  String get relationshipType => throw _privateConstructorUsedError;
  int get strength => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get primaryPreparation =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get complementaryPreparation =>
      throw _privateConstructorUsedError;
  List<String>? get contraindications => throw _privateConstructorUsedError;
  List<String>? get precautions => throw _privateConstructorUsedError;
  List<int>? get commonConditions => throw _privateConstructorUsedError;
  List<String>? get drugInteractions => throw _privateConstructorUsedError;

  /// Serializes this RemedyCombination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemedyCombination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemedyCombinationCopyWith<RemedyCombination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemedyCombinationCopyWith<$Res> {
  factory $RemedyCombinationCopyWith(
    RemedyCombination value,
    $Res Function(RemedyCombination) then,
  ) = _$RemedyCombinationCopyWithImpl<$Res, RemedyCombination>;
  @useResult
  $Res call({
    String primaryRemedy,
    String complementaryRemedy,
    String relationshipType,
    int strength,
    String? notes,
    Map<String, dynamic>? primaryPreparation,
    Map<String, dynamic>? complementaryPreparation,
    List<String>? contraindications,
    List<String>? precautions,
    List<int>? commonConditions,
    List<String>? drugInteractions,
  });
}

/// @nodoc
class _$RemedyCombinationCopyWithImpl<$Res, $Val extends RemedyCombination>
    implements $RemedyCombinationCopyWith<$Res> {
  _$RemedyCombinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemedyCombination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryRemedy = null,
    Object? complementaryRemedy = null,
    Object? relationshipType = null,
    Object? strength = null,
    Object? notes = freezed,
    Object? primaryPreparation = freezed,
    Object? complementaryPreparation = freezed,
    Object? contraindications = freezed,
    Object? precautions = freezed,
    Object? commonConditions = freezed,
    Object? drugInteractions = freezed,
  }) {
    return _then(
      _value.copyWith(
            primaryRemedy:
                null == primaryRemedy
                    ? _value.primaryRemedy
                    : primaryRemedy // ignore: cast_nullable_to_non_nullable
                        as String,
            complementaryRemedy:
                null == complementaryRemedy
                    ? _value.complementaryRemedy
                    : complementaryRemedy // ignore: cast_nullable_to_non_nullable
                        as String,
            relationshipType:
                null == relationshipType
                    ? _value.relationshipType
                    : relationshipType // ignore: cast_nullable_to_non_nullable
                        as String,
            strength:
                null == strength
                    ? _value.strength
                    : strength // ignore: cast_nullable_to_non_nullable
                        as int,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            primaryPreparation:
                freezed == primaryPreparation
                    ? _value.primaryPreparation
                    : primaryPreparation // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            complementaryPreparation:
                freezed == complementaryPreparation
                    ? _value.complementaryPreparation
                    : complementaryPreparation // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            contraindications:
                freezed == contraindications
                    ? _value.contraindications
                    : contraindications // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            precautions:
                freezed == precautions
                    ? _value.precautions
                    : precautions // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            commonConditions:
                freezed == commonConditions
                    ? _value.commonConditions
                    : commonConditions // ignore: cast_nullable_to_non_nullable
                        as List<int>?,
            drugInteractions:
                freezed == drugInteractions
                    ? _value.drugInteractions
                    : drugInteractions // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemedyCombinationImplCopyWith<$Res>
    implements $RemedyCombinationCopyWith<$Res> {
  factory _$$RemedyCombinationImplCopyWith(
    _$RemedyCombinationImpl value,
    $Res Function(_$RemedyCombinationImpl) then,
  ) = __$$RemedyCombinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String primaryRemedy,
    String complementaryRemedy,
    String relationshipType,
    int strength,
    String? notes,
    Map<String, dynamic>? primaryPreparation,
    Map<String, dynamic>? complementaryPreparation,
    List<String>? contraindications,
    List<String>? precautions,
    List<int>? commonConditions,
    List<String>? drugInteractions,
  });
}

/// @nodoc
class __$$RemedyCombinationImplCopyWithImpl<$Res>
    extends _$RemedyCombinationCopyWithImpl<$Res, _$RemedyCombinationImpl>
    implements _$$RemedyCombinationImplCopyWith<$Res> {
  __$$RemedyCombinationImplCopyWithImpl(
    _$RemedyCombinationImpl _value,
    $Res Function(_$RemedyCombinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemedyCombination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryRemedy = null,
    Object? complementaryRemedy = null,
    Object? relationshipType = null,
    Object? strength = null,
    Object? notes = freezed,
    Object? primaryPreparation = freezed,
    Object? complementaryPreparation = freezed,
    Object? contraindications = freezed,
    Object? precautions = freezed,
    Object? commonConditions = freezed,
    Object? drugInteractions = freezed,
  }) {
    return _then(
      _$RemedyCombinationImpl(
        primaryRemedy:
            null == primaryRemedy
                ? _value.primaryRemedy
                : primaryRemedy // ignore: cast_nullable_to_non_nullable
                    as String,
        complementaryRemedy:
            null == complementaryRemedy
                ? _value.complementaryRemedy
                : complementaryRemedy // ignore: cast_nullable_to_non_nullable
                    as String,
        relationshipType:
            null == relationshipType
                ? _value.relationshipType
                : relationshipType // ignore: cast_nullable_to_non_nullable
                    as String,
        strength:
            null == strength
                ? _value.strength
                : strength // ignore: cast_nullable_to_non_nullable
                    as int,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        primaryPreparation:
            freezed == primaryPreparation
                ? _value._primaryPreparation
                : primaryPreparation // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        complementaryPreparation:
            freezed == complementaryPreparation
                ? _value._complementaryPreparation
                : complementaryPreparation // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        contraindications:
            freezed == contraindications
                ? _value._contraindications
                : contraindications // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        precautions:
            freezed == precautions
                ? _value._precautions
                : precautions // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        commonConditions:
            freezed == commonConditions
                ? _value._commonConditions
                : commonConditions // ignore: cast_nullable_to_non_nullable
                    as List<int>?,
        drugInteractions:
            freezed == drugInteractions
                ? _value._drugInteractions
                : drugInteractions // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyCombinationImpl implements _RemedyCombination {
  const _$RemedyCombinationImpl({
    required this.primaryRemedy,
    required this.complementaryRemedy,
    required this.relationshipType,
    required this.strength,
    this.notes,
    final Map<String, dynamic>? primaryPreparation,
    final Map<String, dynamic>? complementaryPreparation,
    final List<String>? contraindications,
    final List<String>? precautions,
    final List<int>? commonConditions,
    final List<String>? drugInteractions,
  }) : _primaryPreparation = primaryPreparation,
       _complementaryPreparation = complementaryPreparation,
       _contraindications = contraindications,
       _precautions = precautions,
       _commonConditions = commonConditions,
       _drugInteractions = drugInteractions;

  factory _$RemedyCombinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemedyCombinationImplFromJson(json);

  @override
  final String primaryRemedy;
  @override
  final String complementaryRemedy;
  @override
  final String relationshipType;
  @override
  final int strength;
  @override
  final String? notes;
  final Map<String, dynamic>? _primaryPreparation;
  @override
  Map<String, dynamic>? get primaryPreparation {
    final value = _primaryPreparation;
    if (value == null) return null;
    if (_primaryPreparation is EqualUnmodifiableMapView)
      return _primaryPreparation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _complementaryPreparation;
  @override
  Map<String, dynamic>? get complementaryPreparation {
    final value = _complementaryPreparation;
    if (value == null) return null;
    if (_complementaryPreparation is EqualUnmodifiableMapView)
      return _complementaryPreparation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _contraindications;
  @override
  List<String>? get contraindications {
    final value = _contraindications;
    if (value == null) return null;
    if (_contraindications is EqualUnmodifiableListView)
      return _contraindications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _precautions;
  @override
  List<String>? get precautions {
    final value = _precautions;
    if (value == null) return null;
    if (_precautions is EqualUnmodifiableListView) return _precautions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _commonConditions;
  @override
  List<int>? get commonConditions {
    final value = _commonConditions;
    if (value == null) return null;
    if (_commonConditions is EqualUnmodifiableListView)
      return _commonConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _drugInteractions;
  @override
  List<String>? get drugInteractions {
    final value = _drugInteractions;
    if (value == null) return null;
    if (_drugInteractions is EqualUnmodifiableListView)
      return _drugInteractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RemedyCombination(primaryRemedy: $primaryRemedy, complementaryRemedy: $complementaryRemedy, relationshipType: $relationshipType, strength: $strength, notes: $notes, primaryPreparation: $primaryPreparation, complementaryPreparation: $complementaryPreparation, contraindications: $contraindications, precautions: $precautions, commonConditions: $commonConditions, drugInteractions: $drugInteractions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemedyCombinationImpl &&
            (identical(other.primaryRemedy, primaryRemedy) ||
                other.primaryRemedy == primaryRemedy) &&
            (identical(other.complementaryRemedy, complementaryRemedy) ||
                other.complementaryRemedy == complementaryRemedy) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(
              other._primaryPreparation,
              _primaryPreparation,
            ) &&
            const DeepCollectionEquality().equals(
              other._complementaryPreparation,
              _complementaryPreparation,
            ) &&
            const DeepCollectionEquality().equals(
              other._contraindications,
              _contraindications,
            ) &&
            const DeepCollectionEquality().equals(
              other._precautions,
              _precautions,
            ) &&
            const DeepCollectionEquality().equals(
              other._commonConditions,
              _commonConditions,
            ) &&
            const DeepCollectionEquality().equals(
              other._drugInteractions,
              _drugInteractions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    primaryRemedy,
    complementaryRemedy,
    relationshipType,
    strength,
    notes,
    const DeepCollectionEquality().hash(_primaryPreparation),
    const DeepCollectionEquality().hash(_complementaryPreparation),
    const DeepCollectionEquality().hash(_contraindications),
    const DeepCollectionEquality().hash(_precautions),
    const DeepCollectionEquality().hash(_commonConditions),
    const DeepCollectionEquality().hash(_drugInteractions),
  );

  /// Create a copy of RemedyCombination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemedyCombinationImplCopyWith<_$RemedyCombinationImpl> get copyWith =>
      __$$RemedyCombinationImplCopyWithImpl<_$RemedyCombinationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemedyCombinationImplToJson(this);
  }
}

abstract class _RemedyCombination implements RemedyCombination {
  const factory _RemedyCombination({
    required final String primaryRemedy,
    required final String complementaryRemedy,
    required final String relationshipType,
    required final int strength,
    final String? notes,
    final Map<String, dynamic>? primaryPreparation,
    final Map<String, dynamic>? complementaryPreparation,
    final List<String>? contraindications,
    final List<String>? precautions,
    final List<int>? commonConditions,
    final List<String>? drugInteractions,
  }) = _$RemedyCombinationImpl;

  factory _RemedyCombination.fromJson(Map<String, dynamic> json) =
      _$RemedyCombinationImpl.fromJson;

  @override
  String get primaryRemedy;
  @override
  String get complementaryRemedy;
  @override
  String get relationshipType;
  @override
  int get strength;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get primaryPreparation;
  @override
  Map<String, dynamic>? get complementaryPreparation;
  @override
  List<String>? get contraindications;
  @override
  List<String>? get precautions;
  @override
  List<int>? get commonConditions;
  @override
  List<String>? get drugInteractions;

  /// Create a copy of RemedyCombination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyCombinationImplCopyWith<_$RemedyCombinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
