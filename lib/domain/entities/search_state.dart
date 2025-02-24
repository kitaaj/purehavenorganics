import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purehavenorganics/domain/entities/search_filters.dart';
import 'package:purehavenorganics/domain/entities/search_result.dart';

part 'search_state.freezed.dart';
part 'search_state.g.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String query,
    @Default([]) List<SearchResult> results,
    @Default([]) List<SearchResult> suggestions,
    @Default(SearchFilters()) SearchFilters filters,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) => 
      _$SearchStateFromJson(json);
}