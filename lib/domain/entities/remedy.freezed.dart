// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remedy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Remedy _$RemedyFromJson(Map<String, dynamic> json) {
  return _Remedy.fromJson(json);
}

/// @nodoc
mixin _$Remedy {
  int get remedyId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get scientificName => throw _privateConstructorUsedError;
  List<String>? get commonNames => throw _privateConstructorUsedError;
  Map<String, dynamic>? get activeComponents =>
      throw _privateConstructorUsedError;
  List<String>? get naturalSources => throw _privateConstructorUsedError;
  List<String>? get additionalBenefits => throw _privateConstructorUsedError;
  String? get mechanismOfAction => throw _privateConstructorUsedError;
  List<String>? get primaryEffects => throw _privateConstructorUsedError;
  List<String>? get secondaryEffects => throw _privateConstructorUsedError;
  List<String>? get preparationMethods => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get dosage => throw _privateConstructorUsedError;
  String? get timing => throw _privateConstructorUsedError;
  String? get recommendedFrequency => throw _privateConstructorUsedError;
  String? get treatmentDuration => throw _privateConstructorUsedError;
  List<String>? get availableForms => throw _privateConstructorUsedError;
  String? get didYouKnow => throw _privateConstructorUsedError;
  String? get precautions => throw _privateConstructorUsedError;
  List<String>? get sideEffects => throw _privateConstructorUsedError;
  String? get contraindications => throw _privateConstructorUsedError;
  String? get drugInteractions => throw _privateConstructorUsedError;
  String? get allergies => throw _privateConstructorUsedError;
  List<String>? get suitableFor => throw _privateConstructorUsedError;
  List<String>? get notSuitableFor => throw _privateConstructorUsedError;
  bool get medicalSupervisionRequired => throw _privateConstructorUsedError;
  String? get complementToMedication => throw _privateConstructorUsedError;
  Map<String, dynamic>? get tags => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<int> get conditions => throw _privateConstructorUsedError;

  /// Serializes this Remedy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Remedy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemedyCopyWith<Remedy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemedyCopyWith<$Res> {
  factory $RemedyCopyWith(Remedy value, $Res Function(Remedy) then) =
      _$RemedyCopyWithImpl<$Res, Remedy>;
  @useResult
  $Res call({
    int remedyId,
    int categoryId,
    String name,
    String? scientificName,
    List<String>? commonNames,
    Map<String, dynamic>? activeComponents,
    List<String>? naturalSources,
    List<String>? additionalBenefits,
    String? mechanismOfAction,
    List<String>? primaryEffects,
    List<String>? secondaryEffects,
    List<String>? preparationMethods,
    String? instructions,
    String? dosage,
    String? timing,
    String? recommendedFrequency,
    String? treatmentDuration,
    List<String>? availableForms,
    String? didYouKnow,
    String? precautions,
    List<String>? sideEffects,
    String? contraindications,
    String? drugInteractions,
    String? allergies,
    List<String>? suitableFor,
    List<String>? notSuitableFor,
    bool medicalSupervisionRequired,
    String? complementToMedication,
    Map<String, dynamic>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<int> conditions,
  });
}

/// @nodoc
class _$RemedyCopyWithImpl<$Res, $Val extends Remedy>
    implements $RemedyCopyWith<$Res> {
  _$RemedyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Remedy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyId = null,
    Object? categoryId = null,
    Object? name = null,
    Object? scientificName = freezed,
    Object? commonNames = freezed,
    Object? activeComponents = freezed,
    Object? naturalSources = freezed,
    Object? additionalBenefits = freezed,
    Object? mechanismOfAction = freezed,
    Object? primaryEffects = freezed,
    Object? secondaryEffects = freezed,
    Object? preparationMethods = freezed,
    Object? instructions = freezed,
    Object? dosage = freezed,
    Object? timing = freezed,
    Object? recommendedFrequency = freezed,
    Object? treatmentDuration = freezed,
    Object? availableForms = freezed,
    Object? didYouKnow = freezed,
    Object? precautions = freezed,
    Object? sideEffects = freezed,
    Object? contraindications = freezed,
    Object? drugInteractions = freezed,
    Object? allergies = freezed,
    Object? suitableFor = freezed,
    Object? notSuitableFor = freezed,
    Object? medicalSupervisionRequired = null,
    Object? complementToMedication = freezed,
    Object? tags = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? conditions = null,
  }) {
    return _then(
      _value.copyWith(
            remedyId:
                null == remedyId
                    ? _value.remedyId
                    : remedyId // ignore: cast_nullable_to_non_nullable
                        as int,
            categoryId:
                null == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            scientificName:
                freezed == scientificName
                    ? _value.scientificName
                    : scientificName // ignore: cast_nullable_to_non_nullable
                        as String?,
            commonNames:
                freezed == commonNames
                    ? _value.commonNames
                    : commonNames // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            activeComponents:
                freezed == activeComponents
                    ? _value.activeComponents
                    : activeComponents // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            naturalSources:
                freezed == naturalSources
                    ? _value.naturalSources
                    : naturalSources // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            additionalBenefits:
                freezed == additionalBenefits
                    ? _value.additionalBenefits
                    : additionalBenefits // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            mechanismOfAction:
                freezed == mechanismOfAction
                    ? _value.mechanismOfAction
                    : mechanismOfAction // ignore: cast_nullable_to_non_nullable
                        as String?,
            primaryEffects:
                freezed == primaryEffects
                    ? _value.primaryEffects
                    : primaryEffects // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            secondaryEffects:
                freezed == secondaryEffects
                    ? _value.secondaryEffects
                    : secondaryEffects // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            preparationMethods:
                freezed == preparationMethods
                    ? _value.preparationMethods
                    : preparationMethods // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            instructions:
                freezed == instructions
                    ? _value.instructions
                    : instructions // ignore: cast_nullable_to_non_nullable
                        as String?,
            dosage:
                freezed == dosage
                    ? _value.dosage
                    : dosage // ignore: cast_nullable_to_non_nullable
                        as String?,
            timing:
                freezed == timing
                    ? _value.timing
                    : timing // ignore: cast_nullable_to_non_nullable
                        as String?,
            recommendedFrequency:
                freezed == recommendedFrequency
                    ? _value.recommendedFrequency
                    : recommendedFrequency // ignore: cast_nullable_to_non_nullable
                        as String?,
            treatmentDuration:
                freezed == treatmentDuration
                    ? _value.treatmentDuration
                    : treatmentDuration // ignore: cast_nullable_to_non_nullable
                        as String?,
            availableForms:
                freezed == availableForms
                    ? _value.availableForms
                    : availableForms // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            didYouKnow:
                freezed == didYouKnow
                    ? _value.didYouKnow
                    : didYouKnow // ignore: cast_nullable_to_non_nullable
                        as String?,
            precautions:
                freezed == precautions
                    ? _value.precautions
                    : precautions // ignore: cast_nullable_to_non_nullable
                        as String?,
            sideEffects:
                freezed == sideEffects
                    ? _value.sideEffects
                    : sideEffects // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            contraindications:
                freezed == contraindications
                    ? _value.contraindications
                    : contraindications // ignore: cast_nullable_to_non_nullable
                        as String?,
            drugInteractions:
                freezed == drugInteractions
                    ? _value.drugInteractions
                    : drugInteractions // ignore: cast_nullable_to_non_nullable
                        as String?,
            allergies:
                freezed == allergies
                    ? _value.allergies
                    : allergies // ignore: cast_nullable_to_non_nullable
                        as String?,
            suitableFor:
                freezed == suitableFor
                    ? _value.suitableFor
                    : suitableFor // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            notSuitableFor:
                freezed == notSuitableFor
                    ? _value.notSuitableFor
                    : notSuitableFor // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            medicalSupervisionRequired:
                null == medicalSupervisionRequired
                    ? _value.medicalSupervisionRequired
                    : medicalSupervisionRequired // ignore: cast_nullable_to_non_nullable
                        as bool,
            complementToMedication:
                freezed == complementToMedication
                    ? _value.complementToMedication
                    : complementToMedication // ignore: cast_nullable_to_non_nullable
                        as String?,
            tags:
                freezed == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            conditions:
                null == conditions
                    ? _value.conditions
                    : conditions // ignore: cast_nullable_to_non_nullable
                        as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemedyImplCopyWith<$Res> implements $RemedyCopyWith<$Res> {
  factory _$$RemedyImplCopyWith(
    _$RemedyImpl value,
    $Res Function(_$RemedyImpl) then,
  ) = __$$RemedyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int remedyId,
    int categoryId,
    String name,
    String? scientificName,
    List<String>? commonNames,
    Map<String, dynamic>? activeComponents,
    List<String>? naturalSources,
    List<String>? additionalBenefits,
    String? mechanismOfAction,
    List<String>? primaryEffects,
    List<String>? secondaryEffects,
    List<String>? preparationMethods,
    String? instructions,
    String? dosage,
    String? timing,
    String? recommendedFrequency,
    String? treatmentDuration,
    List<String>? availableForms,
    String? didYouKnow,
    String? precautions,
    List<String>? sideEffects,
    String? contraindications,
    String? drugInteractions,
    String? allergies,
    List<String>? suitableFor,
    List<String>? notSuitableFor,
    bool medicalSupervisionRequired,
    String? complementToMedication,
    Map<String, dynamic>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<int> conditions,
  });
}

/// @nodoc
class __$$RemedyImplCopyWithImpl<$Res>
    extends _$RemedyCopyWithImpl<$Res, _$RemedyImpl>
    implements _$$RemedyImplCopyWith<$Res> {
  __$$RemedyImplCopyWithImpl(
    _$RemedyImpl _value,
    $Res Function(_$RemedyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Remedy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remedyId = null,
    Object? categoryId = null,
    Object? name = null,
    Object? scientificName = freezed,
    Object? commonNames = freezed,
    Object? activeComponents = freezed,
    Object? naturalSources = freezed,
    Object? additionalBenefits = freezed,
    Object? mechanismOfAction = freezed,
    Object? primaryEffects = freezed,
    Object? secondaryEffects = freezed,
    Object? preparationMethods = freezed,
    Object? instructions = freezed,
    Object? dosage = freezed,
    Object? timing = freezed,
    Object? recommendedFrequency = freezed,
    Object? treatmentDuration = freezed,
    Object? availableForms = freezed,
    Object? didYouKnow = freezed,
    Object? precautions = freezed,
    Object? sideEffects = freezed,
    Object? contraindications = freezed,
    Object? drugInteractions = freezed,
    Object? allergies = freezed,
    Object? suitableFor = freezed,
    Object? notSuitableFor = freezed,
    Object? medicalSupervisionRequired = null,
    Object? complementToMedication = freezed,
    Object? tags = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? conditions = null,
  }) {
    return _then(
      _$RemedyImpl(
        remedyId:
            null == remedyId
                ? _value.remedyId
                : remedyId // ignore: cast_nullable_to_non_nullable
                    as int,
        categoryId:
            null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        scientificName:
            freezed == scientificName
                ? _value.scientificName
                : scientificName // ignore: cast_nullable_to_non_nullable
                    as String?,
        commonNames:
            freezed == commonNames
                ? _value._commonNames
                : commonNames // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        activeComponents:
            freezed == activeComponents
                ? _value._activeComponents
                : activeComponents // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        naturalSources:
            freezed == naturalSources
                ? _value._naturalSources
                : naturalSources // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        additionalBenefits:
            freezed == additionalBenefits
                ? _value._additionalBenefits
                : additionalBenefits // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        mechanismOfAction:
            freezed == mechanismOfAction
                ? _value.mechanismOfAction
                : mechanismOfAction // ignore: cast_nullable_to_non_nullable
                    as String?,
        primaryEffects:
            freezed == primaryEffects
                ? _value._primaryEffects
                : primaryEffects // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        secondaryEffects:
            freezed == secondaryEffects
                ? _value._secondaryEffects
                : secondaryEffects // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        preparationMethods:
            freezed == preparationMethods
                ? _value._preparationMethods
                : preparationMethods // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        instructions:
            freezed == instructions
                ? _value.instructions
                : instructions // ignore: cast_nullable_to_non_nullable
                    as String?,
        dosage:
            freezed == dosage
                ? _value.dosage
                : dosage // ignore: cast_nullable_to_non_nullable
                    as String?,
        timing:
            freezed == timing
                ? _value.timing
                : timing // ignore: cast_nullable_to_non_nullable
                    as String?,
        recommendedFrequency:
            freezed == recommendedFrequency
                ? _value.recommendedFrequency
                : recommendedFrequency // ignore: cast_nullable_to_non_nullable
                    as String?,
        treatmentDuration:
            freezed == treatmentDuration
                ? _value.treatmentDuration
                : treatmentDuration // ignore: cast_nullable_to_non_nullable
                    as String?,
        availableForms:
            freezed == availableForms
                ? _value._availableForms
                : availableForms // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        didYouKnow:
            freezed == didYouKnow
                ? _value.didYouKnow
                : didYouKnow // ignore: cast_nullable_to_non_nullable
                    as String?,
        precautions:
            freezed == precautions
                ? _value.precautions
                : precautions // ignore: cast_nullable_to_non_nullable
                    as String?,
        sideEffects:
            freezed == sideEffects
                ? _value._sideEffects
                : sideEffects // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        contraindications:
            freezed == contraindications
                ? _value.contraindications
                : contraindications // ignore: cast_nullable_to_non_nullable
                    as String?,
        drugInteractions:
            freezed == drugInteractions
                ? _value.drugInteractions
                : drugInteractions // ignore: cast_nullable_to_non_nullable
                    as String?,
        allergies:
            freezed == allergies
                ? _value.allergies
                : allergies // ignore: cast_nullable_to_non_nullable
                    as String?,
        suitableFor:
            freezed == suitableFor
                ? _value._suitableFor
                : suitableFor // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        notSuitableFor:
            freezed == notSuitableFor
                ? _value._notSuitableFor
                : notSuitableFor // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        medicalSupervisionRequired:
            null == medicalSupervisionRequired
                ? _value.medicalSupervisionRequired
                : medicalSupervisionRequired // ignore: cast_nullable_to_non_nullable
                    as bool,
        complementToMedication:
            freezed == complementToMedication
                ? _value.complementToMedication
                : complementToMedication // ignore: cast_nullable_to_non_nullable
                    as String?,
        tags:
            freezed == tags
                ? _value._tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        conditions:
            null == conditions
                ? _value._conditions
                : conditions // ignore: cast_nullable_to_non_nullable
                    as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyImpl implements _Remedy {
  const _$RemedyImpl({
    required this.remedyId,
    required this.categoryId,
    required this.name,
    this.scientificName,
    final List<String>? commonNames,
    final Map<String, dynamic>? activeComponents,
    final List<String>? naturalSources,
    final List<String>? additionalBenefits,
    this.mechanismOfAction,
    final List<String>? primaryEffects,
    final List<String>? secondaryEffects,
    final List<String>? preparationMethods,
    this.instructions,
    this.dosage,
    this.timing,
    this.recommendedFrequency,
    this.treatmentDuration,
    final List<String>? availableForms,
    this.didYouKnow,
    this.precautions,
    final List<String>? sideEffects,
    this.contraindications,
    this.drugInteractions,
    this.allergies,
    final List<String>? suitableFor,
    final List<String>? notSuitableFor,
    this.medicalSupervisionRequired = false,
    this.complementToMedication,
    final Map<String, dynamic>? tags,
    this.createdAt,
    this.updatedAt,
    final List<int> conditions = const [],
  }) : _commonNames = commonNames,
       _activeComponents = activeComponents,
       _naturalSources = naturalSources,
       _additionalBenefits = additionalBenefits,
       _primaryEffects = primaryEffects,
       _secondaryEffects = secondaryEffects,
       _preparationMethods = preparationMethods,
       _availableForms = availableForms,
       _sideEffects = sideEffects,
       _suitableFor = suitableFor,
       _notSuitableFor = notSuitableFor,
       _tags = tags,
       _conditions = conditions;

  factory _$RemedyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemedyImplFromJson(json);

  @override
  final int remedyId;
  @override
  final int categoryId;
  @override
  final String name;
  @override
  final String? scientificName;
  final List<String>? _commonNames;
  @override
  List<String>? get commonNames {
    final value = _commonNames;
    if (value == null) return null;
    if (_commonNames is EqualUnmodifiableListView) return _commonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _activeComponents;
  @override
  Map<String, dynamic>? get activeComponents {
    final value = _activeComponents;
    if (value == null) return null;
    if (_activeComponents is EqualUnmodifiableMapView) return _activeComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _naturalSources;
  @override
  List<String>? get naturalSources {
    final value = _naturalSources;
    if (value == null) return null;
    if (_naturalSources is EqualUnmodifiableListView) return _naturalSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _additionalBenefits;
  @override
  List<String>? get additionalBenefits {
    final value = _additionalBenefits;
    if (value == null) return null;
    if (_additionalBenefits is EqualUnmodifiableListView)
      return _additionalBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mechanismOfAction;
  final List<String>? _primaryEffects;
  @override
  List<String>? get primaryEffects {
    final value = _primaryEffects;
    if (value == null) return null;
    if (_primaryEffects is EqualUnmodifiableListView) return _primaryEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _secondaryEffects;
  @override
  List<String>? get secondaryEffects {
    final value = _secondaryEffects;
    if (value == null) return null;
    if (_secondaryEffects is EqualUnmodifiableListView)
      return _secondaryEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _preparationMethods;
  @override
  List<String>? get preparationMethods {
    final value = _preparationMethods;
    if (value == null) return null;
    if (_preparationMethods is EqualUnmodifiableListView)
      return _preparationMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? instructions;
  @override
  final String? dosage;
  @override
  final String? timing;
  @override
  final String? recommendedFrequency;
  @override
  final String? treatmentDuration;
  final List<String>? _availableForms;
  @override
  List<String>? get availableForms {
    final value = _availableForms;
    if (value == null) return null;
    if (_availableForms is EqualUnmodifiableListView) return _availableForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? didYouKnow;
  @override
  final String? precautions;
  final List<String>? _sideEffects;
  @override
  List<String>? get sideEffects {
    final value = _sideEffects;
    if (value == null) return null;
    if (_sideEffects is EqualUnmodifiableListView) return _sideEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? contraindications;
  @override
  final String? drugInteractions;
  @override
  final String? allergies;
  final List<String>? _suitableFor;
  @override
  List<String>? get suitableFor {
    final value = _suitableFor;
    if (value == null) return null;
    if (_suitableFor is EqualUnmodifiableListView) return _suitableFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _notSuitableFor;
  @override
  List<String>? get notSuitableFor {
    final value = _notSuitableFor;
    if (value == null) return null;
    if (_notSuitableFor is EqualUnmodifiableListView) return _notSuitableFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool medicalSupervisionRequired;
  @override
  final String? complementToMedication;
  final Map<String, dynamic>? _tags;
  @override
  Map<String, dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableMapView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<int> _conditions;
  @override
  @JsonKey()
  List<int> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  String toString() {
    return 'Remedy(remedyId: $remedyId, categoryId: $categoryId, name: $name, scientificName: $scientificName, commonNames: $commonNames, activeComponents: $activeComponents, naturalSources: $naturalSources, additionalBenefits: $additionalBenefits, mechanismOfAction: $mechanismOfAction, primaryEffects: $primaryEffects, secondaryEffects: $secondaryEffects, preparationMethods: $preparationMethods, instructions: $instructions, dosage: $dosage, timing: $timing, recommendedFrequency: $recommendedFrequency, treatmentDuration: $treatmentDuration, availableForms: $availableForms, didYouKnow: $didYouKnow, precautions: $precautions, sideEffects: $sideEffects, contraindications: $contraindications, drugInteractions: $drugInteractions, allergies: $allergies, suitableFor: $suitableFor, notSuitableFor: $notSuitableFor, medicalSupervisionRequired: $medicalSupervisionRequired, complementToMedication: $complementToMedication, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemedyImpl &&
            (identical(other.remedyId, remedyId) ||
                other.remedyId == remedyId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            const DeepCollectionEquality().equals(
              other._commonNames,
              _commonNames,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeComponents,
              _activeComponents,
            ) &&
            const DeepCollectionEquality().equals(
              other._naturalSources,
              _naturalSources,
            ) &&
            const DeepCollectionEquality().equals(
              other._additionalBenefits,
              _additionalBenefits,
            ) &&
            (identical(other.mechanismOfAction, mechanismOfAction) ||
                other.mechanismOfAction == mechanismOfAction) &&
            const DeepCollectionEquality().equals(
              other._primaryEffects,
              _primaryEffects,
            ) &&
            const DeepCollectionEquality().equals(
              other._secondaryEffects,
              _secondaryEffects,
            ) &&
            const DeepCollectionEquality().equals(
              other._preparationMethods,
              _preparationMethods,
            ) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.recommendedFrequency, recommendedFrequency) ||
                other.recommendedFrequency == recommendedFrequency) &&
            (identical(other.treatmentDuration, treatmentDuration) ||
                other.treatmentDuration == treatmentDuration) &&
            const DeepCollectionEquality().equals(
              other._availableForms,
              _availableForms,
            ) &&
            (identical(other.didYouKnow, didYouKnow) ||
                other.didYouKnow == didYouKnow) &&
            (identical(other.precautions, precautions) ||
                other.precautions == precautions) &&
            const DeepCollectionEquality().equals(
              other._sideEffects,
              _sideEffects,
            ) &&
            (identical(other.contraindications, contraindications) ||
                other.contraindications == contraindications) &&
            (identical(other.drugInteractions, drugInteractions) ||
                other.drugInteractions == drugInteractions) &&
            (identical(other.allergies, allergies) ||
                other.allergies == allergies) &&
            const DeepCollectionEquality().equals(
              other._suitableFor,
              _suitableFor,
            ) &&
            const DeepCollectionEquality().equals(
              other._notSuitableFor,
              _notSuitableFor,
            ) &&
            (identical(
                  other.medicalSupervisionRequired,
                  medicalSupervisionRequired,
                ) ||
                other.medicalSupervisionRequired ==
                    medicalSupervisionRequired) &&
            (identical(other.complementToMedication, complementToMedication) ||
                other.complementToMedication == complementToMedication) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
              other._conditions,
              _conditions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    remedyId,
    categoryId,
    name,
    scientificName,
    const DeepCollectionEquality().hash(_commonNames),
    const DeepCollectionEquality().hash(_activeComponents),
    const DeepCollectionEquality().hash(_naturalSources),
    const DeepCollectionEquality().hash(_additionalBenefits),
    mechanismOfAction,
    const DeepCollectionEquality().hash(_primaryEffects),
    const DeepCollectionEquality().hash(_secondaryEffects),
    const DeepCollectionEquality().hash(_preparationMethods),
    instructions,
    dosage,
    timing,
    recommendedFrequency,
    treatmentDuration,
    const DeepCollectionEquality().hash(_availableForms),
    didYouKnow,
    precautions,
    const DeepCollectionEquality().hash(_sideEffects),
    contraindications,
    drugInteractions,
    allergies,
    const DeepCollectionEquality().hash(_suitableFor),
    const DeepCollectionEquality().hash(_notSuitableFor),
    medicalSupervisionRequired,
    complementToMedication,
    const DeepCollectionEquality().hash(_tags),
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_conditions),
  ]);

  /// Create a copy of Remedy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemedyImplCopyWith<_$RemedyImpl> get copyWith =>
      __$$RemedyImplCopyWithImpl<_$RemedyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemedyImplToJson(this);
  }
}

abstract class _Remedy implements Remedy {
  const factory _Remedy({
    required final int remedyId,
    required final int categoryId,
    required final String name,
    final String? scientificName,
    final List<String>? commonNames,
    final Map<String, dynamic>? activeComponents,
    final List<String>? naturalSources,
    final List<String>? additionalBenefits,
    final String? mechanismOfAction,
    final List<String>? primaryEffects,
    final List<String>? secondaryEffects,
    final List<String>? preparationMethods,
    final String? instructions,
    final String? dosage,
    final String? timing,
    final String? recommendedFrequency,
    final String? treatmentDuration,
    final List<String>? availableForms,
    final String? didYouKnow,
    final String? precautions,
    final List<String>? sideEffects,
    final String? contraindications,
    final String? drugInteractions,
    final String? allergies,
    final List<String>? suitableFor,
    final List<String>? notSuitableFor,
    final bool medicalSupervisionRequired,
    final String? complementToMedication,
    final Map<String, dynamic>? tags,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final List<int> conditions,
  }) = _$RemedyImpl;

  factory _Remedy.fromJson(Map<String, dynamic> json) = _$RemedyImpl.fromJson;

  @override
  int get remedyId;
  @override
  int get categoryId;
  @override
  String get name;
  @override
  String? get scientificName;
  @override
  List<String>? get commonNames;
  @override
  Map<String, dynamic>? get activeComponents;
  @override
  List<String>? get naturalSources;
  @override
  List<String>? get additionalBenefits;
  @override
  String? get mechanismOfAction;
  @override
  List<String>? get primaryEffects;
  @override
  List<String>? get secondaryEffects;
  @override
  List<String>? get preparationMethods;
  @override
  String? get instructions;
  @override
  String? get dosage;
  @override
  String? get timing;
  @override
  String? get recommendedFrequency;
  @override
  String? get treatmentDuration;
  @override
  List<String>? get availableForms;
  @override
  String? get didYouKnow;
  @override
  String? get precautions;
  @override
  List<String>? get sideEffects;
  @override
  String? get contraindications;
  @override
  String? get drugInteractions;
  @override
  String? get allergies;
  @override
  List<String>? get suitableFor;
  @override
  List<String>? get notSuitableFor;
  @override
  bool get medicalSupervisionRequired;
  @override
  String? get complementToMedication;
  @override
  Map<String, dynamic>? get tags;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<int> get conditions;

  /// Create a copy of Remedy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyImplCopyWith<_$RemedyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
