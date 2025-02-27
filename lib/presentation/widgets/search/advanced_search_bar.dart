import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/utils/get_icon_for_type.dart';
import 'package:purehavenorganics/domain/entities/search_suggestion.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';

class AdvancedSearchBar extends ConsumerStatefulWidget {
  const AdvancedSearchBar({super.key});

  @override
  ConsumerState<AdvancedSearchBar> createState() => _AdvancedSearchBarState();
}

class _AdvancedSearchBarState extends ConsumerState<AdvancedSearchBar> {
  late SearchController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = SearchController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      searchController: _searchController,
      barHintText: 'Search remedies, conditions, or symptoms...',
      barLeading: const Icon(Icons.search),
      viewTrailing: [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            _searchController.clear();
          },
        ),
      ],
      viewHintText: 'Search remedies, conditions, or symptoms...',
      viewLeading: const Icon(Icons.search),
      suggestionsBuilder: (
        BuildContext context,
        SearchController controller,
      ) async {
        if (controller.text.isEmpty) {
          return const [];
        }

        try {
          final suggestions = await ref.read(
            searchSuggestionsProvider(controller.text).future,
          );

          return suggestions.map((suggestion) {
            return ListTile(
              leading: Icon(getIconForType(suggestion.suggestionType)),
              title: Text(suggestion.suggestion),
              subtitle:
                  suggestion.category != null
                      ? Text(suggestion.category!)
                      : null,
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${(suggestion.relevanceScore * 100).round()}%',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              onTap: () {
                controller.closeView(suggestion.suggestion);
                _navigateToResult(context, suggestion);
              },
            );
          }).toList();
        } catch (e) {
          ('Error fetching suggestions: $e').log();
          return [
            ListTile(
              title: Text('Error fetching suggestions'),
              subtitle: Text(e.toString()),
            ),
          ];
        }
      },
    );
  }

  void _navigateToResult(BuildContext context, SearchSuggestion suggestion) {
    final additionalInfo = suggestion.additionalInfo;
    switch (suggestion.suggestionType.toLowerCase()) {
      case 'remedy':
        Navigator.pushNamed(
          context,
          '/remedy-detail',
          arguments: suggestion.suggestion,
        );
        break;
      case 'common_name':
        Navigator.pushNamed(
          context,
          '/remedy-detail',
          arguments: additionalInfo!['remedy_name'],
        );
        break;
      case 'condition':
        Navigator.pushNamed(
          context,
          '/condition-detail',
          arguments: suggestion.suggestion,
        );
        break;
      case 'symptom':
        Navigator.pushNamed(
          context,
          '/symptom-search',
          arguments: suggestion.suggestion,
        );
        break;
    }
  }
}
