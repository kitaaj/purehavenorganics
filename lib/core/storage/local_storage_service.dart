import 'package:hive_flutter/hive_flutter.dart';
import 'package:purehavenorganics/core/storage/hive_adapters.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy_by_health_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/entities/saved_items.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';

class LocalStorageService {
  static const Duration defaultValidityDuration = Duration(hours: 24);
  static Future<void> init() async {
    await Hive.initFlutter();

    // Register all adapters
    Hive.registerAdapter(ActiveComponentAdapter());
    Hive.registerAdapter(RemedyAdapter());
    Hive.registerAdapter(ConditionAdapter());
    Hive.registerAdapter(SavedItemsAdapter());
    Hive.registerAdapter(SearchSuggestionAdapter());
    Hive.registerAdapter(HealthCategoryAdapter());
    Hive.registerAdapter(ConditionSearchResultAdapter());
    Hive.registerAdapter(RelatedConditionAdapter());
    Hive.registerAdapter(RemediesForConditionAdapter());
    Hive.registerAdapter(RemedyByHealthCategoryAdapter());
    Hive.registerAdapter(FeaturedRemedyAdapter());
    Hive.registerAdapter(RemediesByCategoryAdapter());
    Hive.registerAdapter(RemedyCategoryAdapter());

    // Open boxes
    await Hive.openBox<Remedy>('remedies');
    await Hive.openBox<Condition>('conditions');
    await Hive.openBox<SavedItems>('saved_items');
    await Hive.openBox<SearchSuggestion>('search_suggestions');
    await Hive.openBox<HealthCategory>('health_categories');
    await Hive.openBox<ConditionSearchResult>('condition_search_results');
    await Hive.openBox<RelatedCondition>('related_conditions');
    await Hive.openBox<RemediesForCondition>('remedies_for_conditions');
    await Hive.openBox<RemedyByHealthCategory>('remedies_by_health_category');
    await Hive.openBox<FeaturedRemedy>('featured_remedies');
    await Hive.openBox<RemediesByCategory>('remedies_by_category');
    await Hive.openBox<RemedyCategory>('remedy_categories');
  }

  // You might want to add getter methods for easy access to boxes
  static Box<SearchSuggestion> get searchSuggestionsBox =>
      Hive.box<SearchSuggestion>('search_suggestions');

  static Box<HealthCategory> get healthCategoriesBox =>
      Hive.box<HealthCategory>('health_categories');

  static Box<ConditionSearchResult> get conditionSearchResultsBox =>
      Hive.box<ConditionSearchResult>('condition_search_results');

  static Box<RelatedCondition> get relatedConditionsBox =>
      Hive.box<RelatedCondition>('related_conditions');

  static Box<RemediesForCondition> get remediesForConditionsBox =>
      Hive.box<RemediesForCondition>('remedies_for_conditions');

  static Box<RemedyByHealthCategory> get remediesByHealthCategoryBox =>
      Hive.box<RemedyByHealthCategory>('remedies_by_health_category');

  static Box<FeaturedRemedy> get featuredRemediesBox =>
      Hive.box<FeaturedRemedy>('featured_remedies');

  static Box<RemediesByCategory> get remediesByCategoryBox =>
      Hive.box<RemediesByCategory>('remedies_by_category');

  static Box<RemedyCategory> get remedyCategoriesBox =>
      Hive.box<RemedyCategory>('remedy_categories');

  // Existing getters
  static Box<Remedy> get remediesBox => Hive.box<Remedy>('remedies');
  static Box<Condition> get conditionsBox => Hive.box<Condition>('conditions');
  static Box<SavedItems> get savedItemsBox =>
      Hive.box<SavedItems>('saved_items');
}
