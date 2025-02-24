import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filters.freezed.dart';
part 'search_filters.g.dart';

@freezed
class SearchFilters with _$SearchFilters {
  const factory SearchFilters({
    String? category,
    @Default([]) List<String> tags,
    @Default(false) bool scientificEvidenceOnly,
    int? minEffectiveness,
  }) = _SearchFilters;

  factory SearchFilters.fromJson(Map<String, dynamic> json) => 
      _$SearchFiltersFromJson(json);
}