import 'package:purehavenorganics/core/errors/exceptions.dart';
import 'package:purehavenorganics/core/services/supabase_service.dart';
import 'package:purehavenorganics/core/utils/parse_array.dart';
import 'package:purehavenorganics/core/utils/parse_jsonb.dart';
import 'package:purehavenorganics/domain/entities/active_component.dart';
import 'package:purehavenorganics/domain/entities/category_path.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/entities/condition_treated.dart';
import 'package:purehavenorganics/domain/entities/effectiveness_stats.dart';
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
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';
import 'package:purehavenorganics/domain/entities/symptom_search_result.dart';
import 'package:purehavenorganics/domain/entities/usage_instructions.dart';
import 'package:purehavenorganics/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRemedyDataSource {
  final SupabaseClient _client = SupabaseService.client;

  // Helper method for RPC calls
  Future<dynamic> rpc(String function, {Map<String, dynamic>? params}) async {
    try {
      final response = await _client.rpc(function, params: params);
      return response;
    } catch (e) {
      throw RemedyException('Failed to execute RPC call to $function: $e');
    }
  }

  // Basic CRUD operations
  Future<List<Remedy>> getRemedies({
    int page = 1,
    int limit = 10,
    int? categoryId,
    String? searchTerm,
  }) async {
    try {
      final response = await rpc(
        'get_remedies',
        params: {
          'p_page': page,
          'p_limit': limit,
          'p_category_id': categoryId,
          'p_search_term': searchTerm,
        },
      );

      if (response == null) return [];

      return (response as List)
          .map(
            (item) => Remedy(
              remedyId: item['remedy_id'],
              categoryId: item['category_id'],
              name: item['name'],
              scientificName: item['scientific_name'],
              commonNames: parseArray(item['common_names']),
              activeComponents:
                  (item['active_components'] as List)
                      .map(
                        (component) => ActiveComponent(
                          name: component['name'],
                          effect: parseArray(component['effect']),
                        ),
                      )
                      .toList(),
              naturalSources: parseArray(item['natural_sources']),
              additionalBenefits: parseArray(item['additional_benefits']),
              mechanismOfAction: item['mechanism_of_action'],
              primaryEffects: parseArray(item['primary_effects']),
              secondaryEffects: parseArray(item['secondary_effects']),
              preparationMethods: parseArray(item['preparation_methods']),
              instructions: item['instructions'],
              dosage: item['dosage'],
              timing: item['timing'],
              recommendedFrequency: item['recommended_frequency'],
              treatmentDuration: item['treatment_duration'],
              availableForms: parseArray(item['available_forms']),
              didYouKnow: item['did_you_know'],
              precautions: item['precautions'],
              sideEffects: parseArray(item['side_effects']),
              contraindications: item['contraindications'],
              drugInteractions: item['drug_interactions'],
              allergies: item['allergies'],
              suitableFor: parseArray(item['suitable_for']),
              notSuitableFor: parseArray(item['not_suitable_for']),
              medicalSupervisionRequired:
                  item['medical_supervision_required'] ?? false,
              complementToMedication: item['complement_to_medication'],
              tags: parseArray(item['tags']),
              conditions: parseArray<int>(item['conditions']),
              imgUrl: item['img_url'],
            ),
          )
          .toList();
    } catch (e, stackTrace) {
      ('[log] Error in getRemedies: $e\nStackTrace: $stackTrace').log();
      throw RemedyException('Failed to fetch remedies: $e');
    }
  }

  // Related Remedies
  Future<List<RelatedRemedy>> getRelatedRemedies(String remedyName) async {
    try {
      final response = await rpc(
        'get_related_remedies',
        params: {'p_remedy_name': remedyName},
      );
      return (response as List)
          .map((json) => RelatedRemedy.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch related remedies: $e');
    }
  }

  Future<Remedy> getRemedyById(String identifier, {bool isName = false}) async {
  try {
    final query = _client.from('remedies').select();
    
    if (isName) {
      query.eq('remedy_name', identifier);
    } else {
      query.eq('remedy_id', identifier);
    }

    final response = await query.single();
    return Remedy.fromJson(response);
  } catch (e) {
    throw RemedyException('Failed to fetch remedy: $e');
  }
}
Future<Remedy> getRemedyByName(String name) async {
  return getRemedyById(name, isName: true);
}

  Future<List<Remedy>> searchRemedies(String query) async {
    try {
      final response = await rpc(
        'search_remedies_advanced',
        params: {
          'search_params': {'term': query, 'limit': 20, 'offset': 0},
        },
      );

      return (response as List).map((json) => Remedy.fromJson(json)).toList();
    } catch (e) {
      throw RemedyException('Failed to search remedies: $e');
    }
  }

  Future<List<RemedyCategory>> getRemedyCategories() async {
    try {
      final response = await _client
          .from('remedy_categories')
          .select()
          .order('category_name');

      return (response as List)
          .map(
            (json) => RemedyCategory(
              categoryId: json['category_id'],
              categoryName: json['category_name'],
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch categories: $e');
    }
  }

  // Category Operations
  Future<List<RemediesByCategory>> getRemediesByCategory(
    String categoryName,
  ) async {
    try {
      final response = await rpc(
        'get_remedies_by_category',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map(
            (json) => RemediesByCategory(
              remedyName: json['remedy_name'],
              commonNames: parseArray(json['common_names']),
              primaryUses: parseArray(json['primary_uses']),
              scientificName: json['scientific_name'],
              imgUrl: json['img_url'],
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch remedies by category: $e');
    }
  }

  Future<List<CategoryPath>> getCategoryPath(String categoryName) async {
    try {
      final response = await rpc(
        'get_category_path',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map((json) => CategoryPath.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch category path: $e');
    }
  }

  // Condition Operations
  Future<List<RemedyCondition>> getRemedyConditions(String remedyName) async {
    try {
      final response = await rpc(
        'get_remedy_conditions',
        params: {'p_remedy_name': remedyName},
      );
      return (response as List)
          .map((json) => RemedyCondition.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch remedy conditions: $e');
    }
  }

  Future<List<RelatedCondition>> getRelatedConditions(
    String conditionName,
  ) async {
    try {
      final response = await rpc(
        'get_related_conditions',
        params: {'p_condition_name': conditionName},
      );
      return (response as List)
          .map(
            (json) => RelatedCondition(
              relatedCondition: json['related_condition'],
              relationshipType: json['relationship_type'],
              relationshipStrength: json['relationship_strength'],
              relationshipDescription: json['relationship_description'],
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch related conditions: $e');
    }
  }

  Future<List<RemedyByHealthCategory>> getRemediesByHealthCategory(
    int categoryId, {
    bool includeSubcategories = false,
  }) async {
    try {
      final response = await rpc(
        'get_remedies_by_health_category',
        params: {
          'p_category_id': categoryId,
          'p_include_subcategories': includeSubcategories,
        },
      );

      if (response == null) return [];

      return (response as List)
          .map(
            (item) => RemedyByHealthCategory(
              remedyId: item['remedy_id'],
              remedyName: item['remedy_name'],
              healthCategoryId: item['health_category_id'],
              primaryCategory: item['primary_category'],
              effectivenessRating: item['effectiveness_rating'],
              notes: item['notes'],
              categoryName: item['category_name'],
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch remedies by health category: $e');
    }
  }

  Future<List<Condition>> getConditions({
    String? searchTerm,
    int page = 1,
    int limit = 10,
    int? minRemedies,
  }) async {
    try {
      final response = await rpc(
        'get_conditions',
        params: {
          'p_search_term': searchTerm,
          'p_page': page,
          'p_limit': limit,
          'p_min_remedies': minRemedies,
        },
      );

      ('[log] Supabase getConditions response: $response').log();

      if (response == null) return [];

      return (response as List)
          .map(
            (item) => Condition(
              conditionId: item['condition_id'],
              name: item['name'],
              description: item['description'],
              symptoms: parseArray(item['symptoms']),
            ),
          )
          .toList();
    } catch (e, stackTrace) {
      ('[log] Error in getConditions: $e\nStackTrace: $stackTrace').log();
      throw RemedyException('Failed to fetch conditions: $e');
    }
  }

  // Search Operations
  Future<List<Remedy>> searchByEffectiveness({
    String? conditionName,
    double minEffectiveness = 3.0,
    bool requireEvidence = false,
  }) async {
    try {
      final response = await rpc(
        'search_by_effectiveness',
        params: {
          'p_condition_name': conditionName,
          'p_min_effectiveness': minEffectiveness,
          'p_require_evidence': requireEvidence,
        },
      );
      return (response as List).map((json) => Remedy.fromJson(json)).toList();
    } catch (e) {
      throw RemedyException('Failed to search by effectiveness: $e');
    }
  }

  Future<List<SearchSuggestion>> getSearchSuggestions({
    required String partialTerm,
    String? suggestionType,
    int limitCount = 10,
  }) async {
    try {
      final response = await rpc(
        'get_search_suggestions',
        params: {
          'partial_term': partialTerm,
          'suggestion_type': suggestionType,
          'limit_count': limitCount,
        },
      );
      return (response as List)
          .map(
            (json) => SearchSuggestion(
              suggestion: json['suggestion'],
              suggestionType: json['type_name'],
              category: json['category'],
              relevanceScore: (json['relevance_score'] as num).toDouble(),
              additionalInfo: parseJsonb(json['additional_info']),
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to get search suggestions: $e');
    }
  }

  Future<List<Remedy>> fuzzySearchRemedies({
    required String searchTerm,
    double similarityThreshold = 0.3,
  }) async {
    try {
      final response = await rpc(
        'fuzzy_search_remedies',
        params: {
          'search_term': searchTerm,
          'similarity_threshold': similarityThreshold,
        },
      );
      return (response as List).map((json) => Remedy.fromJson(json)).toList();
    } catch (e) {
      throw RemedyException('Failed to perform fuzzy search: $e');
    }
  }

  // Featured and Recommendations
  Future<List<FeaturedRemedy>> getFeaturedRemedies({
    int limitCount = 5,
    String? categoryFilter,
  }) async {
    try {
      final response = await rpc(
        'get_featured_remedies',
        params: {'limit_count': limitCount, 'category_filter': categoryFilter},
      );
      if (response == null) return [];
      return (response as List)
          .map(
            (item) => FeaturedRemedy(
              remedyName: item['remedy_name'],
              categoryName: item['category_name'],
              primaryUses: parseArray(item['primary_uses']),
              effectivenessScore: item['effectiveness_score'],
              imgUrl: item['img_url'],
            ),
          )
          .toList();
    } catch (e) {
      e.log();
      throw RemedyException('Failed to fetch featured remedies: $e');
    }
  }

  Future<List<RemedyCombination>> getRemedyCombinations({
    required String remedyName,
    int minStrength = 3,
  }) async {
    try {
      final response = await rpc(
        'get_remedy_combinations',
        params: {'p_remedy_name': remedyName, 'min_strength': minStrength},
      );
      return (response as List)
          .map((json) => RemedyCombination.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch remedy combinations: $e');
    }
  }

  Future<String> getFullCategoryPath(String categoryName) async {
    try {
      final response = await rpc(
        'get_full_category_path',
        params: {'p_category_name': categoryName},
      );
      return response as String;
    } catch (e) {
      throw RemedyException('Failed to fetch full category path: $e');
    }
  }

  Future<List<HealthCategory>> getParentCategories(String categoryName) async {
    try {
      final response = await rpc(
        'get_parent_categories',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map((json) => HealthCategory.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch parent categories: $e');
    }
  }

  Future<List<HealthCategory>> getSubcategories(String categoryName) async {
    try {
      final response = await rpc(
        'get_subcategories',
        params: {'p_category_name': categoryName},
      );
      return (response as List)
          .map((json) => HealthCategory.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch subcategories: $e');
    }
  }

  Future<List<SymptomSearchResult>> searchBySymptoms({
    required List<String> symptoms,
    int matchThreshold = 1,
  }) async {
    try {
      final response = await _client.rpc(
        'search_by_symptoms',
        params: {'symptom_list': symptoms, 'match_threshold': matchThreshold},
      );

      ('Supabase searchBySymptoms response: $response').log();

      if (response == null) return [];

      return (response as List)
          .map(
            (item) => SymptomSearchResult(
              conditionName: item['condition_name'],
              matchingSymptoms: parseArray(item['matching_symptoms']),
              matchCount: item['match_count'],
              recommendedRemedies: parseJsonb(['recommended_remedies']) ?? {},
            ),
          )
          .toList();
    } catch (e, stackTrace) {
      ('Error in searchBySymptoms: $e\nStackTrace: $stackTrace').log();
      throw RemedyException('Failed to search by symptoms: $e');
    }
  }

  Future<List<SearchSuggestion>> getTrendingSearches({
    int daysBack = 7,
    int limit = 10,
  }) async {
    try {
      final response = await rpc(
        'get_trending_searches',
        params: {'p_days_back': daysBack, 'limit_count': limit},
      );
      return (response as List)
          .map((json) => SearchSuggestion.fromJson(json))
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch trending searches: $e');
    }
  }

  Future<List<ConditionSearchResult>> searchConditions({
    String? searchTerm,
    int? minRemedies,
    double? minEffectiveness,
    int limit = 10,
    int offset = 0,
  }) async {
    try {
      final response = await rpc(
        'search_conditions',
        params: {
          'search_term': searchTerm,
          'min_remedies': minRemedies,
          'min_effectiveness': minEffectiveness,
          'limit_count': limit,
          'offset_count': offset,
        },
      );
      if (response == null) return [];
      return (response as List)
          .map(
            (json) => ConditionSearchResult(
              conditionName: json['condition_name'],
              conditionDescription: json['condition_description'],
              symptoms: parseArray(json['symptoms']),
              remedyCount: json['remedy_count'],
              avgEffectiveness: json['avg_effectiveness'],
              topRemedies: parseJsonb(json['top_remedies']) ?? {},
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to search conditions: $e');
    }
  }

  Future<List<HealthCategory>> getCategories() async {
    try {
      final response = await rpc('get_health_categories_formatted');
      if (response == null) return [];

      return (response as List)
          .map(
            (item) => HealthCategory(
              categoryId: item['category_id'],
              displayName: item['display_name'],
              level: item['level'],
              isLeaf: item['is_leaf'],
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch health categories: $e');
    }
  }

  Future<RemedyDetails> getRemedyDetails(String remedyName) async {
    try {
      final response = await rpc(
        'get_remedy_details',
        params: {'p_remedy_name': remedyName},
      );

      if (response == null || response.isEmpty) {
        throw RemedyException('No details found for remedy: $remedyName');
      }

      final remedyData = response[0];
      ('Raw remedy data: $remedyData').log();

      return RemedyDetails(
        remedyName: remedyData['remedy_name'],
        scientificName: remedyData['scientific_name'],
        categoryName: remedyData['category_name'],
        commonNames: parseArray(remedyData['common_names']),
        activeComponents:
            (remedyData['active_components'] as List?)
                ?.map(
                  (e) => ActiveComponent.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            [],
        preparationMethods: List<String>.from(
          remedyData['preparation_methods'] ?? [],
        ),
        conditionsTreated:
            (remedyData['conditions_treated'] as List?)?.map((e) {
              final map = Map<String, dynamic>.from(e);
              if (map['effectiveness'] != null) {
                map['effectiveness'] = (map['effectiveness'] as num).toInt();
              }
              return ConditionTreated.fromJson(map);
            }).toList() ??
            [],
        effectivenessStats: EffectivenessStats.fromJson(
          remedyData['effectiveness_stats'] as Map<String, dynamic>,
        ),
        usageInstructions: UsageInstructions.fromJson(
          remedyData['usage_instructions'] as Map<String, dynamic>,
        ),
      );
    } catch (e, ee) {
      throw RemedyException('Failed to fetch remedy details: $e\n$ee');
    }
  }

  Future<List<RemediesForCondition>> getRemediesForCondition({
    required String conditionName,
    int minEffectiveness = 3,
  }) async {
    try {
      final response = await rpc(
        'get_remedies_for_condition',
        params: {
          'condition_name': conditionName,
          'min_effectiveness': minEffectiveness,
        },
      );
      return (response as List)
          .map(
            (json) => RemediesForCondition(
              remedyName: json['remedy_name'],
              preparationMethods: parseArray(json['preparation_methods']),
              scientificName: json['scientific_name'],
              categoryName: json['category_name'],
              effectivenessRating: (json['effectiveness_rating']),
            ),
          )
          .toList();
    } catch (e) {
      throw RemedyException('Failed to fetch remedies for condition: $e');
    }
  }
}
