import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/remedy_category.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class RemedyCategoriesNotifier extends BaseCacheNotifier<List<RemedyCategory>> {
  final RemedyRepository _repository;

  RemedyCategoriesNotifier(this._repository)
      : super(StorageKeys.cachedRemedyCategories) {
    loadData();
  }

  @override
  Future<List<RemedyCategory>> fetchFromNetwork() {
    return _repository.getRemedyCategories();
  }
}