import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/featured_remedy.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class FeaturedRemediesNotifier extends BaseCacheNotifier<List<FeaturedRemedy>> {
  final RemedyRepository _repository;

  FeaturedRemediesNotifier(this._repository)
      : super(StorageKeys.cachedFeaturedRemedies) {
    loadData();
  }

  @override
  Future<List<FeaturedRemedy>> fetchFromNetwork() {
    return _repository.getFeaturedRemedies();
  }
}