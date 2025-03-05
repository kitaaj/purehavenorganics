// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemedyImpl _$$RemedyImplFromJson(Map<String, dynamic> json) => _$RemedyImpl(
  remedyId: (json['remedyId'] as num).toInt(),
  categoryId: (json['categoryId'] as num).toInt(),
  name: json['name'] as String,
  scientificName: json['scientificName'] as String?,
  commonNames:
      (json['commonNames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  activeComponents:
      (json['activeComponents'] as List<dynamic>?)
          ?.map((e) => ActiveComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
  naturalSources:
      (json['naturalSources'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  additionalBenefits:
      (json['additionalBenefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  mechanismOfAction: json['mechanismOfAction'] as String?,
  primaryEffects:
      (json['primaryEffects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  secondaryEffects:
      (json['secondaryEffects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  preparationMethods:
      (json['preparationMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  instructions: json['instructions'] as String?,
  dosage: json['dosage'] as String?,
  timing: json['timing'] as String?,
  recommendedFrequency: json['recommendedFrequency'] as String?,
  treatmentDuration: json['treatmentDuration'] as String?,
  availableForms:
      (json['availableForms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  didYouKnow: json['didYouKnow'] as String?,
  precautions: json['precautions'] as String?,
  sideEffects:
      (json['sideEffects'] as List<dynamic>?)?.map((e) => e as String).toList(),
  contraindications: json['contraindications'] as String?,
  drugInteractions: json['drugInteractions'] as String?,
  allergies: json['allergies'] as String?,
  suitableFor:
      (json['suitableFor'] as List<dynamic>?)?.map((e) => e as String).toList(),
  notSuitableFor:
      (json['notSuitableFor'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  medicalSupervisionRequired:
      json['medicalSupervisionRequired'] as bool? ?? false,
  complementToMedication: json['complementToMedication'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
  conditions:
      (json['conditions'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  imgUrl: json['imgUrl'] as String?,
);

Map<String, dynamic> _$$RemedyImplToJson(_$RemedyImpl instance) =>
    <String, dynamic>{
      'remedyId': instance.remedyId,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'scientificName': instance.scientificName,
      'commonNames': instance.commonNames,
      'activeComponents': instance.activeComponents,
      'naturalSources': instance.naturalSources,
      'additionalBenefits': instance.additionalBenefits,
      'mechanismOfAction': instance.mechanismOfAction,
      'primaryEffects': instance.primaryEffects,
      'secondaryEffects': instance.secondaryEffects,
      'preparationMethods': instance.preparationMethods,
      'instructions': instance.instructions,
      'dosage': instance.dosage,
      'timing': instance.timing,
      'recommendedFrequency': instance.recommendedFrequency,
      'treatmentDuration': instance.treatmentDuration,
      'availableForms': instance.availableForms,
      'didYouKnow': instance.didYouKnow,
      'precautions': instance.precautions,
      'sideEffects': instance.sideEffects,
      'contraindications': instance.contraindications,
      'drugInteractions': instance.drugInteractions,
      'allergies': instance.allergies,
      'suitableFor': instance.suitableFor,
      'notSuitableFor': instance.notSuitableFor,
      'medicalSupervisionRequired': instance.medicalSupervisionRequired,
      'complementToMedication': instance.complementToMedication,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'conditions': instance.conditions,
      'imgUrl': instance.imgUrl,
    };
