import 'package:freezed_annotation/freezed_annotation.dart';

part 'remedies_by_category.freezed.dart';
part 'remedies_by_category.g.dart';

@freezed
class RemediesByCategory with _$RemediesByCategory {
  const factory RemediesByCategory({
    required String remedyName,
    List<String>? commonNames,
    List<String>? primaryUses,
    String? scientificName,
  }) = _RemediesByCategory;

  factory RemediesByCategory.fromJson(Map<String, dynamic> json) =>
      _$RemediesByCategoryFromJson(json);
}