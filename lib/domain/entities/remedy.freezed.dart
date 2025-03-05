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
  @HiveField(0)
  int get remedyId => throw _privateConstructorUsedError;
  @HiveField(1)
  int get categoryId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get scientificName => throw _privateConstructorUsedError;
  @HiveField(4)
  List<String>? get commonNames => throw _privateConstructorUsedError;
  @HiveField(5)
  List<ActiveComponent>? get activeComponents =>
      throw _privateConstructorUsedError;
  @HiveField(6)
  List<String>? get naturalSources => throw _privateConstructorUsedError;
  @HiveField(7)
  List<String>? get additionalBenefits => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get mechanismOfAction => throw _privateConstructorUsedError;
  @HiveField(9)
  List<String>? get primaryEffects => throw _privateConstructorUsedError;
  @HiveField(10)
  List<String>? get secondaryEffects => throw _privateConstructorUsedError;
  @HiveField(11)
  List<String>? get preparationMethods => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get instructions => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get dosage => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get timing => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get recommendedFrequency => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get treatmentDuration => throw _privateConstructorUsedError;
  @HiveField(17)
  List<String>? get availableForms => throw _privateConstructorUsedError;
  @HiveField(18)
  String? get didYouKnow => throw _privateConstructorUsedError;
  @HiveField(19)
  String? get precautions => throw _privateConstructorUsedError;
  @HiveField(20)
  List<String>? get sideEffects => throw _privateConstructorUsedError;
  @HiveField(21)
  String? get contraindications => throw _privateConstructorUsedError;
  @HiveField(22)
  String? get drugInteractions => throw _privateConstructorUsedError;
  @HiveField(23)
  String? get allergies => throw _privateConstructorUsedError;
  @HiveField(24)
  List<String>? get suitableFor => throw _privateConstructorUsedError;
  @HiveField(25)
  List<String>? get notSuitableFor => throw _privateConstructorUsedError;
  @HiveField(26)
  bool get medicalSupervisionRequired => throw _privateConstructorUsedError;
  @HiveField(27)
  String? get complementToMedication => throw _privateConstructorUsedError;
  @HiveField(28)
  List<String>? get tags => throw _privateConstructorUsedError;
  @HiveField(29)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(30)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(31)
  List<int> get conditions => throw _privateConstructorUsedError;
  @HiveField(32)
  String? get imgUrl => throw _privateConstructorUsedError;

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
    @HiveField(0) int remedyId,
    @HiveField(1) int categoryId,
    @HiveField(2) String name,
    @HiveField(3) String? scientificName,
    @HiveField(4) List<String>? commonNames,
    @HiveField(5) List<ActiveComponent>? activeComponents,
    @HiveField(6) List<String>? naturalSources,
    @HiveField(7) List<String>? additionalBenefits,
    @HiveField(8) String? mechanismOfAction,
    @HiveField(9) List<String>? primaryEffects,
    @HiveField(10) List<String>? secondaryEffects,
    @HiveField(11) List<String>? preparationMethods,
    @HiveField(12) String? instructions,
    @HiveField(13) String? dosage,
    @HiveField(14) String? timing,
    @HiveField(15) String? recommendedFrequency,
    @HiveField(16) String? treatmentDuration,
    @HiveField(17) List<String>? availableForms,
    @HiveField(18) String? didYouKnow,
    @HiveField(19) String? precautions,
    @HiveField(20) List<String>? sideEffects,
    @HiveField(21) String? contraindications,
    @HiveField(22) String? drugInteractions,
    @HiveField(23) String? allergies,
    @HiveField(24) List<String>? suitableFor,
    @HiveField(25) List<String>? notSuitableFor,
    @HiveField(26) bool medicalSupervisionRequired,
    @HiveField(27) String? complementToMedication,
    @HiveField(28) List<String>? tags,
    @HiveField(29) DateTime? createdAt,
    @HiveField(30) DateTime? updatedAt,
    @HiveField(31) List<int> conditions,
    @HiveField(32) String? imgUrl,
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
    Object? imgUrl = freezed,
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
                        as List<ActiveComponent>?,
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
                        as List<String>?,
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
            imgUrl:
                freezed == imgUrl
                    ? _value.imgUrl
                    : imgUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
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
    @HiveField(0) int remedyId,
    @HiveField(1) int categoryId,
    @HiveField(2) String name,
    @HiveField(3) String? scientificName,
    @HiveField(4) List<String>? commonNames,
    @HiveField(5) List<ActiveComponent>? activeComponents,
    @HiveField(6) List<String>? naturalSources,
    @HiveField(7) List<String>? additionalBenefits,
    @HiveField(8) String? mechanismOfAction,
    @HiveField(9) List<String>? primaryEffects,
    @HiveField(10) List<String>? secondaryEffects,
    @HiveField(11) List<String>? preparationMethods,
    @HiveField(12) String? instructions,
    @HiveField(13) String? dosage,
    @HiveField(14) String? timing,
    @HiveField(15) String? recommendedFrequency,
    @HiveField(16) String? treatmentDuration,
    @HiveField(17) List<String>? availableForms,
    @HiveField(18) String? didYouKnow,
    @HiveField(19) String? precautions,
    @HiveField(20) List<String>? sideEffects,
    @HiveField(21) String? contraindications,
    @HiveField(22) String? drugInteractions,
    @HiveField(23) String? allergies,
    @HiveField(24) List<String>? suitableFor,
    @HiveField(25) List<String>? notSuitableFor,
    @HiveField(26) bool medicalSupervisionRequired,
    @HiveField(27) String? complementToMedication,
    @HiveField(28) List<String>? tags,
    @HiveField(29) DateTime? createdAt,
    @HiveField(30) DateTime? updatedAt,
    @HiveField(31) List<int> conditions,
    @HiveField(32) String? imgUrl,
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
    Object? imgUrl = freezed,
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
                    as List<ActiveComponent>?,
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
                    as List<String>?,
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
        imgUrl:
            freezed == imgUrl
                ? _value.imgUrl
                : imgUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemedyImpl implements _Remedy {
  const _$RemedyImpl({
    @HiveField(0) required this.remedyId,
    @HiveField(1) required this.categoryId,
    @HiveField(2) required this.name,
    @HiveField(3) this.scientificName,
    @HiveField(4) final List<String>? commonNames,
    @HiveField(5) final List<ActiveComponent>? activeComponents,
    @HiveField(6) final List<String>? naturalSources,
    @HiveField(7) final List<String>? additionalBenefits,
    @HiveField(8) this.mechanismOfAction,
    @HiveField(9) final List<String>? primaryEffects,
    @HiveField(10) final List<String>? secondaryEffects,
    @HiveField(11) final List<String>? preparationMethods,
    @HiveField(12) this.instructions,
    @HiveField(13) this.dosage,
    @HiveField(14) this.timing,
    @HiveField(15) this.recommendedFrequency,
    @HiveField(16) this.treatmentDuration,
    @HiveField(17) final List<String>? availableForms,
    @HiveField(18) this.didYouKnow,
    @HiveField(19) this.precautions,
    @HiveField(20) final List<String>? sideEffects,
    @HiveField(21) this.contraindications,
    @HiveField(22) this.drugInteractions,
    @HiveField(23) this.allergies,
    @HiveField(24) final List<String>? suitableFor,
    @HiveField(25) final List<String>? notSuitableFor,
    @HiveField(26) this.medicalSupervisionRequired = false,
    @HiveField(27) this.complementToMedication,
    @HiveField(28) final List<String>? tags,
    @HiveField(29) this.createdAt,
    @HiveField(30) this.updatedAt,
    @HiveField(31) final List<int> conditions = const [],
    @HiveField(32) this.imgUrl,
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
  @HiveField(0)
  final int remedyId;
  @override
  @HiveField(1)
  final int categoryId;
  @override
  @HiveField(2)
  final String name;
  @override
  @HiveField(3)
  final String? scientificName;
  final List<String>? _commonNames;
  @override
  @HiveField(4)
  List<String>? get commonNames {
    final value = _commonNames;
    if (value == null) return null;
    if (_commonNames is EqualUnmodifiableListView) return _commonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ActiveComponent>? _activeComponents;
  @override
  @HiveField(5)
  List<ActiveComponent>? get activeComponents {
    final value = _activeComponents;
    if (value == null) return null;
    if (_activeComponents is EqualUnmodifiableListView)
      return _activeComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _naturalSources;
  @override
  @HiveField(6)
  List<String>? get naturalSources {
    final value = _naturalSources;
    if (value == null) return null;
    if (_naturalSources is EqualUnmodifiableListView) return _naturalSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _additionalBenefits;
  @override
  @HiveField(7)
  List<String>? get additionalBenefits {
    final value = _additionalBenefits;
    if (value == null) return null;
    if (_additionalBenefits is EqualUnmodifiableListView)
      return _additionalBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(8)
  final String? mechanismOfAction;
  final List<String>? _primaryEffects;
  @override
  @HiveField(9)
  List<String>? get primaryEffects {
    final value = _primaryEffects;
    if (value == null) return null;
    if (_primaryEffects is EqualUnmodifiableListView) return _primaryEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _secondaryEffects;
  @override
  @HiveField(10)
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
  @HiveField(11)
  List<String>? get preparationMethods {
    final value = _preparationMethods;
    if (value == null) return null;
    if (_preparationMethods is EqualUnmodifiableListView)
      return _preparationMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(12)
  final String? instructions;
  @override
  @HiveField(13)
  final String? dosage;
  @override
  @HiveField(14)
  final String? timing;
  @override
  @HiveField(15)
  final String? recommendedFrequency;
  @override
  @HiveField(16)
  final String? treatmentDuration;
  final List<String>? _availableForms;
  @override
  @HiveField(17)
  List<String>? get availableForms {
    final value = _availableForms;
    if (value == null) return null;
    if (_availableForms is EqualUnmodifiableListView) return _availableForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(18)
  final String? didYouKnow;
  @override
  @HiveField(19)
  final String? precautions;
  final List<String>? _sideEffects;
  @override
  @HiveField(20)
  List<String>? get sideEffects {
    final value = _sideEffects;
    if (value == null) return null;
    if (_sideEffects is EqualUnmodifiableListView) return _sideEffects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(21)
  final String? contraindications;
  @override
  @HiveField(22)
  final String? drugInteractions;
  @override
  @HiveField(23)
  final String? allergies;
  final List<String>? _suitableFor;
  @override
  @HiveField(24)
  List<String>? get suitableFor {
    final value = _suitableFor;
    if (value == null) return null;
    if (_suitableFor is EqualUnmodifiableListView) return _suitableFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _notSuitableFor;
  @override
  @HiveField(25)
  List<String>? get notSuitableFor {
    final value = _notSuitableFor;
    if (value == null) return null;
    if (_notSuitableFor is EqualUnmodifiableListView) return _notSuitableFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  @HiveField(26)
  final bool medicalSupervisionRequired;
  @override
  @HiveField(27)
  final String? complementToMedication;
  final List<String>? _tags;
  @override
  @HiveField(28)
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(29)
  final DateTime? createdAt;
  @override
  @HiveField(30)
  final DateTime? updatedAt;
  final List<int> _conditions;
  @override
  @JsonKey()
  @HiveField(31)
  List<int> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  @HiveField(32)
  final String? imgUrl;

  @override
  String toString() {
    return 'Remedy(remedyId: $remedyId, categoryId: $categoryId, name: $name, scientificName: $scientificName, commonNames: $commonNames, activeComponents: $activeComponents, naturalSources: $naturalSources, additionalBenefits: $additionalBenefits, mechanismOfAction: $mechanismOfAction, primaryEffects: $primaryEffects, secondaryEffects: $secondaryEffects, preparationMethods: $preparationMethods, instructions: $instructions, dosage: $dosage, timing: $timing, recommendedFrequency: $recommendedFrequency, treatmentDuration: $treatmentDuration, availableForms: $availableForms, didYouKnow: $didYouKnow, precautions: $precautions, sideEffects: $sideEffects, contraindications: $contraindications, drugInteractions: $drugInteractions, allergies: $allergies, suitableFor: $suitableFor, notSuitableFor: $notSuitableFor, medicalSupervisionRequired: $medicalSupervisionRequired, complementToMedication: $complementToMedication, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, conditions: $conditions, imgUrl: $imgUrl)';
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
            ) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
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
    imgUrl,
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
    @HiveField(0) required final int remedyId,
    @HiveField(1) required final int categoryId,
    @HiveField(2) required final String name,
    @HiveField(3) final String? scientificName,
    @HiveField(4) final List<String>? commonNames,
    @HiveField(5) final List<ActiveComponent>? activeComponents,
    @HiveField(6) final List<String>? naturalSources,
    @HiveField(7) final List<String>? additionalBenefits,
    @HiveField(8) final String? mechanismOfAction,
    @HiveField(9) final List<String>? primaryEffects,
    @HiveField(10) final List<String>? secondaryEffects,
    @HiveField(11) final List<String>? preparationMethods,
    @HiveField(12) final String? instructions,
    @HiveField(13) final String? dosage,
    @HiveField(14) final String? timing,
    @HiveField(15) final String? recommendedFrequency,
    @HiveField(16) final String? treatmentDuration,
    @HiveField(17) final List<String>? availableForms,
    @HiveField(18) final String? didYouKnow,
    @HiveField(19) final String? precautions,
    @HiveField(20) final List<String>? sideEffects,
    @HiveField(21) final String? contraindications,
    @HiveField(22) final String? drugInteractions,
    @HiveField(23) final String? allergies,
    @HiveField(24) final List<String>? suitableFor,
    @HiveField(25) final List<String>? notSuitableFor,
    @HiveField(26) final bool medicalSupervisionRequired,
    @HiveField(27) final String? complementToMedication,
    @HiveField(28) final List<String>? tags,
    @HiveField(29) final DateTime? createdAt,
    @HiveField(30) final DateTime? updatedAt,
    @HiveField(31) final List<int> conditions,
    @HiveField(32) final String? imgUrl,
  }) = _$RemedyImpl;

  factory _Remedy.fromJson(Map<String, dynamic> json) = _$RemedyImpl.fromJson;

  @override
  @HiveField(0)
  int get remedyId;
  @override
  @HiveField(1)
  int get categoryId;
  @override
  @HiveField(2)
  String get name;
  @override
  @HiveField(3)
  String? get scientificName;
  @override
  @HiveField(4)
  List<String>? get commonNames;
  @override
  @HiveField(5)
  List<ActiveComponent>? get activeComponents;
  @override
  @HiveField(6)
  List<String>? get naturalSources;
  @override
  @HiveField(7)
  List<String>? get additionalBenefits;
  @override
  @HiveField(8)
  String? get mechanismOfAction;
  @override
  @HiveField(9)
  List<String>? get primaryEffects;
  @override
  @HiveField(10)
  List<String>? get secondaryEffects;
  @override
  @HiveField(11)
  List<String>? get preparationMethods;
  @override
  @HiveField(12)
  String? get instructions;
  @override
  @HiveField(13)
  String? get dosage;
  @override
  @HiveField(14)
  String? get timing;
  @override
  @HiveField(15)
  String? get recommendedFrequency;
  @override
  @HiveField(16)
  String? get treatmentDuration;
  @override
  @HiveField(17)
  List<String>? get availableForms;
  @override
  @HiveField(18)
  String? get didYouKnow;
  @override
  @HiveField(19)
  String? get precautions;
  @override
  @HiveField(20)
  List<String>? get sideEffects;
  @override
  @HiveField(21)
  String? get contraindications;
  @override
  @HiveField(22)
  String? get drugInteractions;
  @override
  @HiveField(23)
  String? get allergies;
  @override
  @HiveField(24)
  List<String>? get suitableFor;
  @override
  @HiveField(25)
  List<String>? get notSuitableFor;
  @override
  @HiveField(26)
  bool get medicalSupervisionRequired;
  @override
  @HiveField(27)
  String? get complementToMedication;
  @override
  @HiveField(28)
  List<String>? get tags;
  @override
  @HiveField(29)
  DateTime? get createdAt;
  @override
  @HiveField(30)
  DateTime? get updatedAt;
  @override
  @HiveField(31)
  List<int> get conditions;
  @override
  @HiveField(32)
  String? get imgUrl;

  /// Create a copy of Remedy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemedyImplCopyWith<_$RemedyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
