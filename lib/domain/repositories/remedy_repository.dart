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

abstract class RemedyRepository {
  // Basic remedy operations
  Future<List<Remedy>> getRemedies({
    required SearchParams params,
    bool forceRefresh = false,
  });
  Future<List<Condition>> getConditions({
    String? searchTerm,
    int page = 1,
    int limit = 10,
    int? minRemedies,
  });
  Future<Remedy> getRemedyById(String id);
  Future<List<Remedy>> searchRemedies(String query);

  // Category operations
  Future<List<CategoryPath>> getCategoryPath(String categoryName);
  Future<String> getFullCategoryPath(String categoryName);
  Future<List<HealthCategory>> getSubcategories(String categoryName);
  Future<List<HealthCategory>> getParentCategories(String categoryName);
  Future<List<HealthCategory>> getCategoryHierarchy(String categoryName);
  Future<List<HealthCategory>> getChildCategories(String categoryName);
  Future<List<HealthCategory>> getDirectSubcategories(String categoryName);

  // Remedy relationships
  Future<List<RelatedRemedy>> getRelatedRemedies(String remedyName);
  Future<List<RemedyCombination>> getRemedyCombinations({
    required String remedyName,
    int minStrength = 3,
  });

  // Condition operations
  Future<List<RemedyCondition>> getRemedyConditions(String remedyName);
  Future<List<RelatedCondition>> getRelatedConditions(String conditionName);
  Future<List<RemediesForCondition>> getRemediesForCondition({
    required String conditionName,
    int minEffectiveness = 3,
  });

  // Search operations
  Future<List<SearchSuggestion>> getSearchSuggestions(
    String term, {
    String? type,
    int limit = 10,
  });
  Future<List<Remedy>> fuzzySearchRemedies({
    required String searchTerm,
    double similarityThreshold = 0.3,
  });
  Future<List<Remedy>> searchByEffectiveness({
    String? conditionName,
    double minEffectiveness = 3.0,
    bool requireEvidence = false,
  });
  Future<List<SymptomSearchResult>> searchBySymptoms({
    required List<String> symptoms,
    int matchThreshold = 1,
  });

  // Featured and recommendations
  Future<List<FeaturedRemedy>> getFeaturedRemedies({
    int limit = 5,
    String? categoryFilter,
  });

  Future<List<SearchSuggestion>> getTrendingSearches({
    int daysBack = 7,
    int limit = 10,
  });

  Future<List<RemediesByCategory>> getRemediesByCategory(String categoryName);

  // Future<List<Condition>> searchConditions(String query);
  Future<List<HealthCategory>> getCategories();
  Future<List<RemedyCategory>> getRemedyCategories();
  Future<List<ConditionSearchResult>> searchConditions({
    String? searchTerm,
    int? minRemedies,
    double? minEffectiveness,
    int limit = 10,
    int offset = 0,
  });

  Future<RemedyDetails> getRemedyDetails(String remedyName);

  Future<List<RemedyByHealthCategory>> getRemediesByHealthCategory(
    int categoryId, {
    bool includeSubcategories = false,
  });

  Future<Remedy> getRemedyByName(String name);
}
