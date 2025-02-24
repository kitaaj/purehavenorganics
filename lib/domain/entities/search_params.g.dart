// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchParamsImpl _$$SearchParamsImplFromJson(Map<String, dynamic> json) =>
    _$SearchParamsImpl(
      searchTerm: json['searchTerm'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      forceRefresh: json['forceRefresh'] as bool? ?? false,
    );

Map<String, dynamic> _$$SearchParamsImplToJson(_$SearchParamsImpl instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'categoryId': instance.categoryId,
      'page': instance.page,
      'limit': instance.limit,
      'forceRefresh': instance.forceRefresh,
    };
