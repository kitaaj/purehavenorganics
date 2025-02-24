import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/search/search_controller.dart';
import 'package:purehavenorganics/data/providers/data_source_providers.dart';

final searchControllerProvider = Provider.autoDispose((ref) {
  final repository = ref.watch(remedyRepositoryProvider);
  return SearchController(repository);
});