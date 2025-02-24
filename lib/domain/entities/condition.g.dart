// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      conditionId: (json['conditionId'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      symptoms:
          (json['symptoms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'conditionId': instance.conditionId,
      'name': instance.name,
      'description': instance.description,
      'symptoms': instance.symptoms,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
