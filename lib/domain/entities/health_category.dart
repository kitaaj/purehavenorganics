import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_category.freezed.dart';
part 'health_category.g.dart';

@freezed
class HealthCategory with _$HealthCategory {
  const factory HealthCategory({
    required int categoryId,
    required String displayName,
    int? parentCategoryId,
    required int level,
    required bool isLeaf,
  }) = _HealthCategory;

  factory HealthCategory.fromJson(Map<String, dynamic> json) =>
      _$HealthCategoryFromJson(json);
}