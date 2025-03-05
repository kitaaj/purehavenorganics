import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/remedy_by_health_category.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class HealthCategoryRemediesNotifier
    extends BaseCacheNotifier<List<RemedyByHealthCategory>> {
  final RemedyRepository _repository;
  final int categoryId;

  HealthCategoryRemediesNotifier({
    required RemedyRepository repository,
    required this.categoryId,
  }) : _repository = repository,
       super('${StorageKeys.cachedHealthCategoryRemedies}_$categoryId') {
    loadData();
  }

  @override
  Future<List<RemedyByHealthCategory>> fetchFromNetwork() {
    return _repository.getRemediesByHealthCategory(
      categoryId,
      includeSubcategories: true,
    );
  }
}
