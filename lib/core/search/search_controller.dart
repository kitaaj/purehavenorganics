import 'package:purehavenorganics/core/utils/search_type_enums.dart';
import 'package:purehavenorganics/domain/entities/search.dart';
import 'package:purehavenorganics/domain/repositories/remedy_repository.dart';
import 'package:purehavenorganics/main.dart';
import 'package:rxdart/rxdart.dart';

class SearchController {
  final RemedyRepository _repository;
  final _searchTermController = BehaviorSubject<String>();
  final _searchTypeController = BehaviorSubject<SearchType>.seeded(
    SearchType.remedy,
  );
  final _resultsController = BehaviorSubject<SearchResults>();
  final _loadingController = BehaviorSubject<bool>.seeded(false);

  SearchController(this._repository) {
    Rx.combineLatest2(
          _searchTermController.stream.debounceTime(
            const Duration(milliseconds: 300),
          ),
          _searchTypeController.stream,
          (String term, SearchType type) => (term, type),
        )
        .switchMap((tuple) {
          final (term, type) = tuple;
          if (term.isEmpty) return Stream.value(SearchResults.empty());

          _loadingController.add(true);
          return Stream.fromFuture(
            _performSearch(
              term,
              type,
            ).whenComplete(() => _loadingController.add(false)),
          );
        })
        .listen(_resultsController.add);
  }

  // Input streams
  Function(String) get updateSearchTerm => _searchTermController.sink.add;
  Function(SearchType) get updateSearchType => _searchTypeController.sink.add;

  // Output streams
  Stream<SearchResults> get searchResults => _resultsController.stream;
  Stream<bool> get isLoading => _loadingController.stream;

 Future<SearchResults> _performSearch(String term, SearchType type) async {
    try {
      switch (type) {
        case SearchType.remedy:
          final remedies = await _repository.searchRemedies(term);
          return SearchResults(remedies: remedies);
        
        case SearchType.condition:
          final conditions = await _repository.getConditions(
            searchTerm: term,
            page: 1,
            limit: 10,
          );
          return SearchResults(conditions: conditions);
        
        case SearchType.symptom:
          final symptomResults = await _repository.searchBySymptoms(
            symptoms: [term],
            matchThreshold: 1,
          );
          return SearchResults(symptomResults: symptomResults);
      }
    } catch (e) {
      ('Logging from search_controller lib>core>search>search_controller.dart:\n[Search Error] $e').log();
      return SearchResults.error(e.toString());
    }
  }
  void dispose() {
    _searchTermController.close();
    _searchTypeController.close();
    _resultsController.close();
  }
}
