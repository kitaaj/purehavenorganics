import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'remedies_by_category.freezed.dart';
part 'remedies_by_category.g.dart';

@freezed
@HiveType(typeId: 43)
class RemediesByCategory with _$RemediesByCategory {
  const factory RemediesByCategory({
    @HiveField(0)
    required String remedyName,
    @HiveField(1)
    List<String>? commonNames,
    @HiveField(2)
    List<String>? primaryUses,
    @HiveField(3)
    String? scientificName,
    @HiveField(3)
    String? imgUrl,
  }) = _RemediesByCategory;

  factory RemediesByCategory.fromJson(Map<String, dynamic> json) =>
      _$RemediesByCategoryFromJson(json);
}