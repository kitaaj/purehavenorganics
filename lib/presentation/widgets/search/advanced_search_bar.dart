import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/utils/search_type_enums.dart';
import 'package:purehavenorganics/domain/entities/search.dart';
import 'package:purehavenorganics/presentation/providers/search_providers.dart';
import 'package:purehavenorganics/presentation/widgets/search/search_results_list.dart';

class AdvancedSearchBar extends ConsumerStatefulWidget {
  const AdvancedSearchBar({super.key});

  @override
  ConsumerState<AdvancedSearchBar> createState() => _AdvancedSearchBarState();
}

class _AdvancedSearchBarState extends ConsumerState<AdvancedSearchBar> {
  late TextEditingController _controller;
  SearchType _currentType = SearchType.remedy;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final searchController = ref.watch(searchControllerProvider);
    
    return Column(
      mainAxisSize: MainAxisSize.min, // Important to prevent expansion
      children: [
        Row(
          children: [
            Expanded(
              child: SearchBar(
                controller: _controller,
                hintText: 'Search remedies, conditions, or symptoms...',
                onChanged: searchController.updateSearchTerm,
              ),
            ),
            PopupMenuButton<SearchType>(
              initialValue: _currentType,
              onSelected: (type) {
                setState(() => _currentType = type);
                searchController.updateSearchType(type);
              },
              itemBuilder: (context) => SearchType.values
                  .map((type) => PopupMenuItem(
                        value: type,
                        child: Text(type.name),
                      ))
                  .toList(),
            ),
          ],
        ),
        // Show search results in a constrained box
        StreamBuilder<SearchResults>(
          stream: searchController.searchResults,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const SizedBox();
            
            final results = snapshot.data!;
            if (results.errorMessage != null) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  results.errorMessage!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              );
            }

            // Constrain the height of search results
            return ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: SingleChildScrollView(
                child: SearchResultsList(results: results),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
