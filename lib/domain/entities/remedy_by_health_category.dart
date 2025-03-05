import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'remedy_by_health_category.freezed.dart';
part 'remedy_by_health_category.g.dart';

@freezed
@HiveType(typeId: 41)
class RemedyByHealthCategory with _$RemedyByHealthCategory {
  const factory RemedyByHealthCategory({
    @HiveField(0)
    required int remedyId,
    @HiveField(1)
    required String remedyName,
    @HiveField(2)
    required int healthCategoryId,
    @HiveField(3)
    required bool primaryCategory,
    @HiveField(4)
    int? effectivenessRating,
    @HiveField(5)
    String? notes,
    @HiveField(6)
    required String categoryName,
  }) = _RemedyByHealthCategory;

  factory RemedyByHealthCategory.fromJson(Map<String, dynamic> json) =>
      _$RemedyByHealthCategoryFromJson(json);
}