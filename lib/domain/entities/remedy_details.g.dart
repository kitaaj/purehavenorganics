// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remedy_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemedyDetailsImpl _$$RemedyDetailsImplFromJson(Map<String, dynamic> json) =>
    _$RemedyDetailsImpl(
      remedyName: json['remedyName'] as String,
      scientificName: json['scientificName'] as String?,
      categoryName: json['categoryName'] as String,
      commonNames:
          (json['commonNames'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      activeComponents:
          (json['activeComponents'] as List<dynamic>)
              .map((e) => ActiveComponent.fromJson(e as Map<String, dynamic>))
              .toList(),
      preparationMethods:
          (json['preparationMethods'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      conditionsTreated:
          (json['conditionsTreated'] as List<dynamic>)
              .map((e) => ConditionTreated.fromJson(e as Map<String, dynamic>))
              .toList(),
      effectivenessStats:
          json['effectivenessStats'] == null
              ? null
              : EffectivenessStats.fromJson(
                json['effectivenessStats'] as Map<String, dynamic>,
              ),
      usageInstructions:
          json['usageInstructions'] == null
              ? null
              : UsageInstructions.fromJson(
                json['usageInstructions'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$RemedyDetailsImplToJson(_$RemedyDetailsImpl instance) =>
    <String, dynamic>{
      'remedyName': instance.remedyName,
      'scientificName': instance.scientificName,
      'categoryName': instance.categoryName,
      'commonNames': instance.commonNames,
      'activeComponents': instance.activeComponents,
      'preparationMethods': instance.preparationMethods,
      'conditionsTreated': instance.conditionsTreated,
      'effectivenessStats': instance.effectivenessStats,
      'usageInstructions': instance.usageInstructions,
    };
