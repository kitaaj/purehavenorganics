import 'package:purehavenorganics/core/errors/exceptions.dart';
import 'package:purehavenorganics/core/utils/retry_helper.dart';
import 'package:purehavenorganics/data/datasources/supabase/supabase_remedy_data_source.dart';
import 'package:purehavenorganics/domain/entities/category_path.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';
import 'package:purehavenorganics/domain/entities/related_remedy.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/remedy_by_health_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_combination.dart';
import 'package:purehavenorganics/domain/entities/remedy_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy_details.dart';
import 'package:purehavenorganics/domain/entities/search_params.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/main.dart';

class RemedyRepositoryImpl implements RemedyRepository {
  final SupabaseRemedyDataSource _dataSource;

  RemedyRepositoryImpl(this._dataSource);

  @override
  Future<List<Remedy>> getRemedies({
    required SearchParams params,
    bool forceRefresh = false,
  }) async {
    try {
      ('Fetching remedies with params: $params').log();

      final remedies = await RetryHelper.retry(
        operation:
            () => _dataSource.getRemedies(
              page: params.page,
              limit: params.limit,
              categoryId: params.categoryId,
              searchTerm: params.searchTerm,
            ),
      );
      ('[RemedyRepositoryImpl] Fetched remedies: ${remedies.map((r) => r.imgUrl).toList()}').log();
      return remedies;
    } catch (e) {
      ('[log] Error in RemedyRepositoryImpl.getRemedies: $e').log();
      throw RemedyException('Failed to fetch remedies: $e');
    }
  }

  @override
  Future<List<RelatedRemedy>> getRelatedRemedies(String remedyName) async {
    try {
      return await _dataSource.getRelatedRemedies(remedyName);
    } catch (e) {
      throw RemedyException('Failed to fetch related remedies: $e');
    }
  }

  @override
  Future<Remedy> getRemedyById(String id) async {
    try {
      return await _dataSource.getRemedyById(id);
    } catch (e) {
      throw RemedyException('Failed to fetch remedy: $e');
    }
  }

  @override
  Future<List<RemedyCondition>> getRemedyConditions(String remedyName) async {
    try {
      return await _dataSource.getRemedyConditions(remedyName);
    } catch (e) {
      throw RemedyException('Failed to fetch remedy conditions: $e');
    }
  }

  @override
  Future<List<Remedy>> searchRemedies(String query) async {
    try {
      return await getRemedies(
        params: SearchParams(searchTerm: query, page: 1, limit: 20),
      );
    } catch (e) {
      throw RemedyException('Failed to search remedies: $e');
    }
  }

  @override
  Future<List<SearchSuggestion>> getSearchSuggestions(
    String term, {
    String? type,
    int limit = 10,
  }) async {
    try {
      return await _dataSource.getSearchSuggestions(
        partialTerm: term,
        suggestionType: type,
        limitCount: limit,
      );
    } catch (e) {
      throw RemedyException('Failed to get search suggestions: $e');
    }
  }

  @override
  Future<List<Remedy>> fuzzySearchRemedies({
    required String searchTerm,
    double similarityThreshold = 0.3,
  }) async {
    try {
      return await _dataSource.fuzzySearchRemedies(
        searchTerm: searchTerm,
        similarityThreshold: similarityThreshold,
      );
    } catch (e) {
      throw RemedyException('Failed to perform fuzzy search: $e');
    }
  }

  @override
  Future<List<HealthCategory>> getCategoryHierarchy(String categoryName) async {
    try {
      final response = await _dataSource.rpc(
        'get_category_hierarchy',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map((json) => HealthCategory.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch category hierarchy: $e');
    }
  }

  @override
  Future<List<CategoryPath>> getCategoryPath(String categoryName) async {
    try {
      return await _dataSource.getCategoryPath(categoryName);
    } catch (e) {
      throw RemedyException('Failed to fetch category path: $e');
    }
  }

  @override
  Future<List<HealthCategory>> getChildCategories(String categoryName) async {
    try {
      final response = await _dataSource.rpc(
        'get_child_categories',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map((json) => HealthCategory.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch child categories: $e');
    }
  }

  @override
  Future<List<HealthCategory>> getDirectSubcategories(
    String categoryName,
  ) async {
    try {
      final response = await _dataSource.rpc(
        'get_direct_subcategories',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map((json) => HealthCategory.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch direct subcategories: $e');
    }
  }

  @override
  Future<List<FeaturedRemedy>> getFeaturedRemedies({
    int limit = 5,
    String? categoryFilter,
  }) async {
    try {
      return await _dataSource.getFeaturedRemedies(
        limitCount: limit,
        categoryFilter: categoryFilter,
      );
    } catch (e) {
      throw RemedyException('Failed to fetch featured remedies: $e');
    }
  }

  @override
  Future<String> getFullCategoryPath(String categoryName) async {
    try {
      return await _dataSource.getFullCategoryPath(categoryName);
    } catch (e) {
      throw RemedyException('Failed to fetch full category path: $e');
    }
  }

  @override
  Future<List<HealthCategory>> getParentCategories(String categoryName) async {
    try {
      return await _dataSource.getParentCategories(categoryName);
    } catch (e) {
      throw RemedyException('Failed to fetch parent categories: $e');
    }
  }

  @override
  Future<List<RelatedCondition>> getRelatedConditions(
    String conditionName,
  ) async {
    try {
      return await _dataSource.getRelatedConditions(conditionName);
    } catch (e) {
      throw RemedyException('Failed to fetch related conditions: $e');
    }
  }

  @override
  Future<List<RemediesForCondition>> getRemediesForCondition({
    required String conditionName,
    int minEffectiveness = 3,
  }) async {
    try {
      return await _dataSource.getRemediesForCondition(
        conditionName: conditionName,
        minEffectiveness: minEffectiveness,
      );
    } catch (e) {
      throw RemedyException('Failed to fetch remedies for condition: $e');
    }
  }

  @override
  Future<List<RemedyCombination>> getRemedyCombinations({
    required String remedyName,
    int minStrength = 3,
  }) async {
    try {
      return await _dataSource.getRemedyCombinations(
        remedyName: remedyName,
        minStrength: minStrength,
      );
    } catch (e) {
      throw RemedyException('Failed to fetch remedy combinations: $e');
    }
  }

  @override
  Future<List<HealthCategory>> getSubcategories(String categoryName) async {
    try {
      return await _dataSource.getSubcategories(categoryName);
    } catch (e) {
      throw RemedyException('Failed to fetch subcategories: $e');
    }
  }

  @override
  Future<List<SearchSuggestion>> getTrendingSearches({
    int daysBack = 7,
    int limit = 10,
  }) async {
    try {
      return await _dataSource.getTrendingSearches();
    } catch (e) {
      throw RemedyException('Failed to fetch trending searches: $e');
    }
  }

  @override
  Future<List<Remedy>> searchByEffectiveness({
    String? conditionName,
    double minEffectiveness = 3.0,
    bool requireEvidence = false,
  }) async {
    try {
      return await _dataSource.searchByEffectiveness(
        conditionName: conditionName,
      );
    } catch (e) {
      throw RemedyException('Failed to search by effectiveness: $e');
    }
  }

  @override
  Future<List<SymptomSearchResult>> searchBySymptoms({
    required List<String> symptoms,
    int matchThreshold = 1,
  }) async {
    try {
      return await _dataSource.searchBySymptoms(
        symptoms: symptoms,
        matchThreshold: matchThreshold,
      );
    } catch (e) {
      throw RemedyException('Failed to search by symptoms: $e');
    }
  }

  @override
  Future<List<Condition>> getConditions({
    String? searchTerm,
    int page = 1,
    int limit = 10,
    int? minRemedies,
  }) async {
    try {
      return await _dataSource.getConditions(searchTerm: searchTerm);
    } catch (e) {
      throw RemedyException('Failed to fetch conditions: $e');
    }
  }

  @override
  Future<List<RemediesByCategory>> getRemediesByCategory(
    String categoryName,
  ) async {
    try {
      return await _dataSource.getRemediesByCategory(categoryName);
    } catch (e) {
      throw RemedyException('Failed to fetch remedies by category: $e');
    }
  }

  @override
  Future<List<ConditionSearchResult>> searchConditions({
    String? searchTerm,
    int? minRemedies,
    double? minEffectiveness,
    int limit = 10,
    int offset = 0,
  }) async {
    try {
      return _dataSource.searchConditions(
        searchTerm: searchTerm,
        minRemedies: minRemedies,
        minEffectiveness: minEffectiveness,
        limit: limit,
        offset: offset,
      );
    } catch (e) {
      throw RemedyException('Failed to search conditions: $e');
    }
  }

  @override
  Future<List<HealthCategory>> getCategories() async {
    try {
      return await _dataSource.getCategories();
    } catch (e) {
      throw RemedyException('Failed to fetch health categories: $e');
    }
  }

  @override
  Future<List<RemedyCategory>> getRemedyCategories() async {
    try {
      return await _dataSource.getRemedyCategories();
    } catch (e) {
      throw RemedyException('Failed to fetch remedy categories: $e');
    }
  }

  @override
  Future<RemedyDetails> getRemedyDetails(String remedyName) async {
    try {
      return await _dataSource.getRemedyDetails(remedyName);
    } catch (e, stack) {
      stack.log();
      throw RemedyException('Failed to fetch remedy details: $e');
    }
  }

  @override
  Future<List<RemedyByHealthCategory>> getRemediesByHealthCategory(
    int categoryId, {
    bool includeSubcategories = false,
  }) async {
    try {
      return await _dataSource.getRemediesByHealthCategory(
        categoryId,
        includeSubcategories: includeSubcategories,
      );
    } catch (e) {
      throw RemedyException('Failed to fetch remedies by health category: $e');
    }
  }
  
  @override
  Future<Remedy> getRemedyByName(String name) async {
    return _dataSource.getRemedyByName(name);
  }
}
