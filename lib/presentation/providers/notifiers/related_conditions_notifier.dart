import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/related_condition.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class RelatedConditionsNotifier extends BaseCacheNotifier<List<RelatedCondition>> {
  final RemedyRepository _repository;
  final String conditionName;

  RelatedConditionsNotifier({
    required RemedyRepository repository,
    required this.conditionName,
  }) : _repository=repository,
  super('${StorageKeys.cachedRelatedConditions}_$conditionName') {
    loadData();
  }

  @override
  Future<List<RelatedCondition>> fetchFromNetwork() {
    return _repository.getRelatedConditions(conditionName);
  }
}