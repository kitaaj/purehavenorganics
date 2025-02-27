// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedItemsImpl _$$SavedItemsImplFromJson(Map<String, dynamic> json) =>
    _$SavedItemsImpl(
      remedies:
          (json['remedies'] as List<dynamic>?)
              ?.map((e) => Remedy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      conditions:
          (json['conditions'] as List<dynamic>?)
              ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SavedItemsImplToJson(_$SavedItemsImpl instance) =>
    <String, dynamic>{
      'remedies': instance.remedies,
      'conditions': instance.conditions,
    };
