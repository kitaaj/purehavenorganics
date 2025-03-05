import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'health_category.freezed.dart';
part 'health_category.g.dart';

@freezed
@HiveType(typeId: 37)
class HealthCategory with _$HealthCategory {
  const factory HealthCategory({
    @HiveField(0)
    required int categoryId,
    @HiveField(1)
    required String displayName,
    @HiveField(2)
    int? parentCategoryId,
    @HiveField(3)
    required int level,
    @HiveField(4)
    required bool isLeaf,
  }) = _HealthCategory;

  factory HealthCategory.fromJson(Map<String, dynamic> json) =>
      _$HealthCategoryFromJson(json);
}