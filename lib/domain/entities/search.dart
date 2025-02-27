import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResults with _$SearchResults {
  const factory SearchResults({
    @Default([]) List<Remedy> remedies,
    @Default([]) List<Condition> conditions,
    @Default([]) List<SymptomSearchResult> symptomResults,
    String? errorMessage,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);

  factory SearchResults.empty() => const SearchResults();

  factory SearchResults.error(String message) =>
      SearchResults(errorMessage: message);
}
