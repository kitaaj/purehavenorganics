// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedy_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemedyDetails _$RemedyDetailsFromJson(Map<String, dynamic> json) {
  return _RemedyDetails.fromJson(json);
}

/// @nodoc
mixin _$RemedyDetails {
  String get remedyName => throw _privateConstructorUsedError;
  String? get scientificName => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  List<String> get commonNames => throw _privateConstructorUsedError;
  List<ActiveComponent> get activeComponents =>
      throw _privateConstructorUsedError;
  List<String> get preparationMethods => throw _privateConstructorUsedError;
  List<ConditionTreated> get conditionsTreated =>
      throw _privateConstructorUsedError;
  EffectivenessStats? get effectivenessStats =>
      throw _privateConstructorUsedError;
  UsageInstructions? get usageInstructions =>
      throw _privateConstructorUsedError;

  /// Serializes this RemedyDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemedyDetailsCopyWith<RemedyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemedyDetailsCopyWith<$Res> {
  factory $RemedyDetailsCopyWith(
    RemedyDetails value,
    $Res Function(RemedyDetails) then,
  ) = _$RemedyDetailsCopyWithImpl<$Res, RemedyDetails>;
  @useResult
  $Res call({
    String remedyName,
    String? scientificName,
    String categoryName,
    List<String> commonNames,
    List<ActiveComponent> activeComponents,
    List<String> preparationMethods,
    List<ConditionTreated> conditionsTreated,
    EffectivenessStats? effectivenessStats,
    UsageInstructions? usageInstructions,
  });

  $EffectivenessStatsCopyWith<$Res>? get effectivenessStats;
  $UsageInstructionsCopyWith<$Res>? get usageInstructions;
}

/// @nodoc
class _$RemedyDetailsCopyWithImpl<$Res, $Val extends RemedyDetails>
    implements $RemedyDetailsCopyWith<$Res> {
  _$RemedyDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? scientificName = freezed,
    Object? categoryName = null,
    Object? commonNames = null,
    Object? activeComponents = null,
    Object? preparationMethods = null,
    Object? conditionsTreated = null,
    Object? effectivenessStats = freezed,
    Object? usageInstructions = freezed,
  }) {
    return _then(
      _value.copyWith(
            remedyName:
                null == remedyName
                    ? _value.remedyName
                    : remedyName // ignore: cast_nullable_to_non_nullable
                        as String,
            scientificName:
                freezed == scientificName
                    ? _value.scientificName
                    : scientificName // ignore: cast_nullable_to_non_nullable
                        as String?,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
            commonNames:
                null == commonNames
                    ? _value.commonNames
                    : commonNames // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            activeComponents:
                null == activeComponents
                    ? _value.activeComponents
                    : activeComponents // ignore: cast_nullable_to_non_nullable
                        as List<ActiveComponent>,
            preparationMethods:
                null == preparationMethods
                    ? _value.preparationMethods
                    : preparationMethods // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            conditionsTreated:
                null == conditionsTreated
                    ? _value.conditionsTreated
                    : conditionsTreated // ignore: cast_nullable_to_non_nullable
                        as List<ConditionTreated>,
            effectivenessStats:
                freezed == effectivenessStats
                    ? _value.effectivenessStats
                    : effectivenessStats // ignore: cast_nullable_to_non_nullable
                        as EffectivenessStats?,
            usageInstructions:
                freezed == usageInstructions
                    ? _value.usageInstructions
                    : usageInstructions // ignore: cast_nullable_to_non_nullable
                        as UsageInstructions?,
          )
          as $Val,
    );
  }

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EffectivenessStatsCopyWith<$Res>? get effectivenessStats {
    if (_value.effectivenessStats == null) {
      return null;
    }

    return $EffectivenessStatsCopyWith<$Res>(_value.effectivenessStats!, (
      value,
    ) {
      return _then(_value.copyWith(effectivenessStats: value) as $Val);
    });
  }

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInstructionsCopyWith<$Res>? get usageInstructions {
    if (_value.usageInstructions == null) {
      return null;
    }

    return $UsageInstructionsCopyWith<$Res>(_value.usageInstructions!, (value) {
      return _then(_value.copyWith(usageInstructions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemedyDetailsImplCopyWith<$Res>
    implements $RemedyDetailsCopyWith<$Res> {
  factory _$$RemedyDetailsImplCopyWith(
    _$RemedyDetailsImpl value,
    $Res Function(_$RemedyDetailsImpl) then,
  ) = __$$RemedyDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String remedyName,
    String? scientificName,
    String categoryName,
    List<String> commonNames,
    List<ActiveComponent> activeComponents,
    List<String> preparationMethods,
    List<ConditionTreated> conditionsTreated,
    EffectivenessStats? effectivenessStats,
    UsageInstructions? usageInstructions,
  });

  @override
  $EffectivenessStatsCopyWith<$Res>? get effectivenessStats;
  @override
  $UsageInstructionsCopyWith<$Res>? get usageInstructions;
}

/// @nodoc
class __$$RemedyDetailsImplCopyWithImpl<$Res>
    extends _$RemedyDetailsCopyWithImpl<$Res, _$RemedyDetailsImpl>
    implements _$$RemedyDetailsImplCopyWith<$Res> {
  __$$RemedyDetailsImplCopyWithImpl(
    _$RemedyDetailsImpl _value,
    $Res Function(_$RemedyDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyName = null,
    Object? scientificName = freezed,
    Object? categoryName = null,
    Object? commonNames = null,
    Object? activeComponents = null,
    Object? preparationMethods = null,
    Object? conditionsTreated = null,
    Object? effectivenessStats = freezed,
    Object? usageInstructions = freezed,
  }) {
    return _then(
      _$RemedyDetailsImpl(
        remedyName:
            null == remedyName
                ? _value.remedyName
                : remedyName // ignore: cast_nullable_to_non_nullable
                    as String,
        scientificName:
            freezed == scientificName
                ? _value.scientificName
                : scientificName // ignore: cast_nullable_to_non_nullable
                    as String?,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
        commonNames:
            null == commonNames
                ? _value._commonNames
                : commonNames // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        activeComponents:
            null == activeComponents
                ? _value._activeComponents
                : activeComponents // ignore: cast_nullable_to_non_nullable
                    as List<ActiveComponent>,
        preparationMethods:
            null == preparationMethods
                ? _value._preparationMethods
                : preparationMethods // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        conditionsTreated:
            null == conditionsTreated
                ? _value._conditionsTreated
                : conditionsTreated // ignore: cast_nullable_to_non_nullable
                    as List<ConditionTreated>,
        effectivenessStats:
            freezed == effectivenessStats
                ? _value.effectivenessStats
                : effectivenessStats // ignore: cast_nullable_to_non_nullable
                    as EffectivenessStats?,
        usageInstructions:
            freezed == usageInstructions
                ? _value.usageInstructions
                : usageInstructions // ignore: cast_nullable_to_non_nullable
                    as UsageInstructions?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyDetailsImpl implements _RemedyDetails {
  const _$RemedyDetailsImpl({
    required this.remedyName,
    this.scientificName,
    required this.categoryName,
    required final List<String> commonNames,
    required final List<ActiveComponent> activeComponents,
    required final List<String> preparationMethods,
    required final List<ConditionTreated> conditionsTreated,
    this.effectivenessStats,
    this.usageInstructions,
  }) : _commonNames = commonNames,
       _activeComponents = activeComponents,
       _preparationMethods = preparationMethods,
       _conditionsTreated = conditionsTreated;

  factory _$RemedyDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemedyDetailsImplFromJson(json);

  @override
  final String remedyName;
  @override
  final String? scientificName;
  @override
  final String categoryName;
  final List<String> _commonNames;
  @override
  List<String> get commonNames {
    if (_commonNames is EqualUnmodifiableListView) return _commonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonNames);
  }

  final List<ActiveComponent> _activeComponents;
  @override
  List<ActiveComponent> get activeComponents {
    if (_activeComponents is EqualUnmodifiableListView)
      return _activeComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeComponents);
  }

  final List<String> _preparationMethods;
  @override
  List<String> get preparationMethods {
    if (_preparationMethods is EqualUnmodifiableListView)
      return _preparationMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preparationMethods);
  }

  final List<ConditionTreated> _conditionsTreated;
  @override
  List<ConditionTreated> get conditionsTreated {
    if (_conditionsTreated is EqualUnmodifiableListView)
      return _conditionsTreated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditionsTreated);
  }

  @override
  final EffectivenessStats? effectivenessStats;
  @override
  final UsageInstructions? usageInstructions;

  @override
  String toString() {
    return 'RemedyDetails(remedyName: $remedyName, scientificName: $scientificName, categoryName: $categoryName, commonNames: $commonNames, activeComponents: $activeComponents, preparationMethods: $preparationMethods, conditionsTreated: $conditionsTreated, effectivenessStats: $effectivenessStats, usageInstructions: $usageInstructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemedyDetailsImpl &&
            (identical(other.remedyName, remedyName) ||
                other.remedyName == remedyName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality().equals(
              other._commonNames,
              _commonNames,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeComponents,
              _activeComponents,
            ) &&
            const DeepCollectionEquality().equals(
              other._preparationMethods,
              _preparationMethods,
            ) &&
            const DeepCollectionEquality().equals(
              other._conditionsTreated,
              _conditionsTreated,
            ) &&
            (identical(other.effectivenessStats, effectivenessStats) ||
                other.effectivenessStats == effectivenessStats) &&
            (identical(other.usageInstructions, usageInstructions) ||
                other.usageInstructions == usageInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    remedyName,
    scientificName,
    categoryName,
    const DeepCollectionEquality().hash(_commonNames),
    const DeepCollectionEquality().hash(_activeComponents),
    const DeepCollectionEquality().hash(_preparationMethods),
    const DeepCollectionEquality().hash(_conditionsTreated),
    effectivenessStats,
    usageInstructions,
  );

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemedyDetailsImplCopyWith<_$RemedyDetailsImpl> get copyWith =>
      __$$RemedyDetailsImplCopyWithImpl<_$RemedyDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemedyDetailsImplToJson(this);
  }
}

abstract class _RemedyDetails implements RemedyDetails {
  const factory _RemedyDetails({
    required final String remedyName,
    final String? scientificName,
    required final String categoryName,
    required final List<String> commonNames,
    required final List<ActiveComponent> activeComponents,
    required final List<String> preparationMethods,
    required final List<ConditionTreated> conditionsTreated,
    final EffectivenessStats? effectivenessStats,
    final UsageInstructions? usageInstructions,
  }) = _$RemedyDetailsImpl;

  factory _RemedyDetails.fromJson(Map<String, dynamic> json) =
      _$RemedyDetailsImpl.fromJson;

  @override
  String get remedyName;
  @override
  String? get scientificName;
  @override
  String get categoryName;
  @override
  List<String> get commonNames;
  @override
  List<ActiveComponent> get activeComponents;
  @override
  List<String> get preparationMethods;
  @override
  List<ConditionTreated> get conditionsTreated;
  @override
  EffectivenessStats? get effectivenessStats;
  @override
  UsageInstructions? get usageInstructions;

  /// Create a copy of RemedyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyDetailsImplCopyWith<_$RemedyDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
