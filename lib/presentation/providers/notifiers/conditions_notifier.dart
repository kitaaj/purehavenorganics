import 'package:purehavenorganics/core/storage/storage_keys.dart';
import 'package:purehavenorganics/domain/entities/condition.dart';
import 'package:purehavenorganics/core/cache/cachable_notifier.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';

class ConditionsNotifier extends BaseCacheNotifier<List<Condition>> {
  final RemedyRepository _repository;

  ConditionsNotifier(this._repository) : super(StorageKeys.cachedConditions) {
    loadData();
  }

  @override
  Future<List<Condition>> fetchFromNetwork() {
    return _repository.getConditions();
  }
}
