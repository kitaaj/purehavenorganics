import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_params.freezed.dart';
part 'search_params.g.dart';

@freezed
class SearchParams with _$SearchParams {
  const factory SearchParams({
    String? searchTerm,
    int? categoryId,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(false) bool forceRefresh,
  }) = _SearchParams;

  factory SearchParams.fromJson(Map<String, dynamic> json) => 
      _$SearchParamsFromJson(json);
}