import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_category.freezed.dart';
part 'health_category.g.dart';


@freezed
class HealthCategory with _$HealthCategory {
  const factory HealthCategory({
    required int categoryId,
    required String name,
    int? parentCategoryId,
    String? description,
    required int hierarchyLevel,
    String? categoryPath,
    DateTime? createdAt,
  }) = _HealthCategory;

  factory HealthCategory.fromJson(Map<String, dynamic> json) =>
      _$HealthCategoryFromJson(json);
}