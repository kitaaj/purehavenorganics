// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy_combination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemedyCombinationImpl _$$RemedyCombinationImplFromJson(
  Map<String, dynamic> json,
) => _$RemedyCombinationImpl(
  primaryRemedy: json['primaryRemedy'] as String,
  complementaryRemedy: json['complementaryRemedy'] as String,
  relationshipType: json['relationshipType'] as String,
  strength: (json['strength'] as num).toInt(),
  notes: json['notes'] as String?,
  primaryPreparation: json['primaryPreparation'] as Map<String, dynamic>?,
  complementaryPreparation:
      json['complementaryPreparation'] as Map<String, dynamic>?,
  contraindications:
      (json['contraindications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  precautions:
      (json['precautions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  commonConditions:
      (json['commonConditions'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
  drugInteractions:
      (json['drugInteractions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$RemedyCombinationImplToJson(
  _$RemedyCombinationImpl instance,
) => <String, dynamic>{
  'primaryRemedy': instance.primaryRemedy,
  'complementaryRemedy': instance.complementaryRemedy,
  'relationshipType': instance.relationshipType,
  'strength': instance.strength,
  'notes': instance.notes,
  'primaryPreparation': instance.primaryPreparation,
  'complementaryPreparation': instance.complementaryPreparation,
  'contraindications': instance.contraindications,
  'precautions': instance.precautions,
  'commonConditions': instance.commonConditions,
  'drugInteractions': instance.drugInteractions,
};
