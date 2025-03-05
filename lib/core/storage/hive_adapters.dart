import 'package:hive_flutter/hive_flutter.dart';
import 'package:purehavenorganics/domain/entities/active_component.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/domain/entities/condition_search_result.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:purehavenorganics/domain/entities/remedies_for_condition.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/domain/entities/remedy_by_health_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/entities/saved_items.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';

class SavedItemsAdapter extends TypeAdapter<SavedItems> {
  @override
  final int typeId = 32;

  @override
  SavedItems read(BinaryReader reader) {
    return SavedItems(
      remedies: List<Remedy>.from(reader.read()),
      conditions: List<Condition>.from(reader.read()),
    );
  }

  @override
  void write(BinaryWriter writer, SavedItems obj) {
    writer.write(obj.remedies);
    writer.write(obj.conditions);
  }
}

class RemedyAdapter extends TypeAdapter<Remedy> {
  @override
  final int typeId = 33;

  @override
  Remedy read(BinaryReader reader) {
    return Remedy(
      remedyId: reader.read(),
      categoryId: reader.read(),
      name: reader.read(),
      scientificName: reader.read(),
      commonNames: List<String>.from(reader.read() ?? []),
      activeComponents: List<ActiveComponent>.from(reader.read() ?? []),
      naturalSources: List<String>.from(reader.read() ?? []),
      additionalBenefits: List<String>.from(reader.read() ?? []),
      mechanismOfAction: reader.read(),
      primaryEffects: List<String>.from(reader.read() ?? []),
      secondaryEffects: List<String>.from(reader.read() ?? []),
      preparationMethods: List<String>.from(reader.read() ?? []),
      instructions: reader.read(),
      dosage: reader.read(),
      timing: reader.read(),
      recommendedFrequency: reader.read(),
      treatmentDuration: reader.read(),
      availableForms: List<String>.from(reader.read() ?? []),
      didYouKnow: reader.read(),
      precautions: reader.read(),
      sideEffects: List<String>.from(reader.read() ?? []),
      contraindications: reader.read(),
      drugInteractions: reader.read(),
      allergies: reader.read(),
      suitableFor: List<String>.from(reader.read() ?? []),
      notSuitableFor: List<String>.from(reader.read() ?? []),
      medicalSupervisionRequired: reader.read(),
      complementToMedication: reader.read(),
      tags: List<String>.from(reader.read() ?? []),
      createdAt: reader.read(),
      updatedAt: reader.read(),
      conditions: List<int>.from(reader.read() ?? []),
      imgUrl: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Remedy obj) {
    writer.write(obj.remedyId);
    writer.write(obj.categoryId);
    writer.write(obj.name);
    writer.write(obj.scientificName);
    writer.write(obj.commonNames);
    writer.write(obj.activeComponents);
    writer.write(obj.naturalSources);
    writer.write(obj.additionalBenefits);
    writer.write(obj.mechanismOfAction);
    writer.write(obj.primaryEffects);
    writer.write(obj.secondaryEffects);
    writer.write(obj.preparationMethods);
    writer.write(obj.instructions);
    writer.write(obj.dosage);
    writer.write(obj.timing);
    writer.write(obj.recommendedFrequency);
    writer.write(obj.treatmentDuration);
    writer.write(obj.availableForms);
    writer.write(obj.didYouKnow);
    writer.write(obj.precautions);
    writer.write(obj.sideEffects);
    writer.write(obj.contraindications);
    writer.write(obj.drugInteractions);
    writer.write(obj.allergies);
    writer.write(obj.suitableFor);
    writer.write(obj.notSuitableFor);
    writer.write(obj.medicalSupervisionRequired);
    writer.write(obj.complementToMedication);
    writer.write(obj.tags);
    writer.write(obj.createdAt);
    writer.write(obj.updatedAt);
    writer.write(obj.conditions);
    writer.write(obj.imgUrl);
  }
}

class ConditionAdapter extends TypeAdapter<Condition> {
  @override
  final int typeId = 34;

  @override
  Condition read(BinaryReader reader) {
    return Condition(
      conditionId: reader.read(),
      name: reader.read(),
      description: reader.read(),
      symptoms: List<String>.from(reader.read() ?? []),
      createdAt: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Condition obj) {
    writer.write(obj.conditionId);
    writer.write(obj.name);
    writer.write(obj.description);
    writer.write(obj.symptoms);
    writer.write(obj.createdAt);
  }
}

class ActiveComponentAdapter extends TypeAdapter<ActiveComponent> {
  @override
  final int typeId = 35;

  @override
  ActiveComponent read(BinaryReader reader) {
    return ActiveComponent(
      name: reader.read(),
      effect: List<String>.from(reader.read()),
    );
  }

  @override
  void write(BinaryWriter writer, ActiveComponent obj) {
    writer.write(obj.name);
    writer.write(obj.effect);
  }
}


// SearchSuggestion Adapter
class SearchSuggestionAdapter extends TypeAdapter<SearchSuggestion> {
  @override
  final int typeId = 36;

  @override
  SearchSuggestion read(BinaryReader reader) {
    return SearchSuggestion(
      suggestion: reader.read(),
      suggestionType: reader.read(),
      category: reader.read(),
      relevanceScore: reader.read(),
      additionalInfo: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchSuggestion obj) {
    writer.write(obj.suggestion);
    writer.write(obj.suggestionType);
    writer.write(obj.category);
    writer.write(obj.relevanceScore);
    writer.write(obj.additionalInfo);
  }
}


// HealthCategory Type Adapter
class HealthCategoryAdapter extends TypeAdapter<HealthCategory> {
  @override
  final int typeId = 37;

  @override
  HealthCategory read(BinaryReader reader) {
    return HealthCategory(
      categoryId: reader.read(),
      displayName: reader.read(),
      parentCategoryId: reader.read(),
      level: reader.read(),
      isLeaf: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, HealthCategory obj) {
    writer.write(obj.categoryId);
    writer.write(obj.displayName);
    writer.write(obj.parentCategoryId);
    writer.write(obj.level);
    writer.write(obj.isLeaf);
  }
}

// ConditionSearchResult Type Adapter
class ConditionSearchResultAdapter extends TypeAdapter<ConditionSearchResult> {
  @override
  final int typeId = 38;

  @override
  ConditionSearchResult read(BinaryReader reader) {
    return ConditionSearchResult(
      conditionName: reader.read(),
      conditionDescription: reader.read(),
      symptoms: List<String>.from(reader.read()),
      remedyCount: reader.read(),
      avgEffectiveness: reader.read(),
      topRemedies: Map<String, dynamic>.from(reader.read()),
    );
  }

  @override
  void write(BinaryWriter writer, ConditionSearchResult obj) {
    writer.write(obj.conditionName);
    writer.write(obj.conditionDescription);
    writer.write(obj.symptoms);
    writer.write(obj.remedyCount);
    writer.write(obj.avgEffectiveness);
    writer.write(obj.topRemedies);
  }
}


// RelatedCondition Type Adapter
class RelatedConditionAdapter extends TypeAdapter<RelatedCondition> {
  @override
  final int typeId = 39;

  @override
  RelatedCondition read(BinaryReader reader) {
    return RelatedCondition(
      relatedCondition: reader.read(),
      relationshipType: reader.read(),
      relationshipStrength: reader.read(),
      relationshipDescription: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, RelatedCondition obj) {
    writer.write(obj.relatedCondition);
    writer.write(obj.relationshipType);
    writer.write(obj.relationshipStrength);
    writer.write(obj.relationshipDescription);
  }
}

// RemediesForCondition Type Adapter
class RemediesForConditionAdapter extends TypeAdapter<RemediesForCondition> {
  @override
  final int typeId = 40;

  @override
  RemediesForCondition read(BinaryReader reader) {
    return RemediesForCondition(
      remedyName: reader.read(),
      scientificName: reader.read(),
      categoryName: reader.read(),
      effectivenessRating: reader.read(),
      preparationMethods: List<String>.from(reader.read()),
      imgUrl: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, RemediesForCondition obj) {
    writer.write(obj.remedyName);
    writer.write(obj.scientificName);
    writer.write(obj.categoryName);
    writer.write(obj.effectivenessRating);
    writer.write(obj.preparationMethods);
    writer.write(obj.imgUrl);
  }
}

// RemedyByHealthCategory Type Adapter
class RemedyByHealthCategoryAdapter extends TypeAdapter<RemedyByHealthCategory> {
  @override
  final int typeId = 41;

  @override
  RemedyByHealthCategory read(BinaryReader reader) {
    return RemedyByHealthCategory(
      remedyId: reader.read(),
      remedyName: reader.read(),
      healthCategoryId: reader.read(),
      primaryCategory: reader.read(),
      effectivenessRating: reader.read(),
      notes: reader.read(),
      categoryName: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, RemedyByHealthCategory obj) {
    writer.write(obj.remedyId);
    writer.write(obj.remedyName);
    writer.write(obj.healthCategoryId);
    writer.write(obj.primaryCategory);
    writer.write(obj.effectivenessRating);
    writer.write(obj.notes);
    writer.write(obj.categoryName);
  }
}

// FeaturedRemedy Type Adapter
class FeaturedRemedyAdapter extends TypeAdapter<FeaturedRemedy> {
  @override
  final int typeId = 42;

  @override
  FeaturedRemedy read(BinaryReader reader) {
    return FeaturedRemedy(
      remedyName: reader.read(),
      scientificName: reader.read(),
      categoryName: reader.read(),
      primaryUses: List<String>.from(reader.read()),
      effectivenessScore: reader.read(),
      imgUrl: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, FeaturedRemedy obj) {
    writer.write(obj.remedyName);
    writer.write(obj.scientificName);
    writer.write(obj.categoryName);
    writer.write(obj.primaryUses);
    writer.write(obj.effectivenessScore);
    writer.write(obj.imgUrl);
  }
}

// RemediesByCategory Type Adapter
class RemediesByCategoryAdapter extends TypeAdapter<RemediesByCategory> {
  @override
  final int typeId = 43;

  @override
  RemediesByCategory read(BinaryReader reader) {
    return RemediesByCategory(
      remedyName: reader.read(),
      commonNames: List<String>.from(reader.read()),
      primaryUses: List<String>.from(reader.read()),
      scientificName: reader.read(),
      imgUrl: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, RemediesByCategory obj) {
    writer.write(obj.remedyName);
    writer.write(obj.commonNames);
    writer.write(obj.primaryUses);
    writer.write(obj.scientificName);
    writer.write(obj.imgUrl);
  }
}

// RemedyCategory Type Adapter
class RemedyCategoryAdapter extends TypeAdapter<RemedyCategory> {
  @override
  final int typeId = 44;

  @override
  RemedyCategory read(BinaryReader reader) {
    return RemedyCategory(
      categoryId: reader.read(),
      categoryName: reader.read(),
      description: reader.read(),
      createdAt: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, RemedyCategory obj) {
    writer.write(obj.categoryId);
    writer.write(obj.categoryName);
    writer.write(obj.description);
    writer.write(obj.createdAt);
  }
}
