import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/search_result.dart';

class SearchSuggestions extends StatelessWidget {
  final List<SearchResult> suggestions;

  const SearchSuggestions({
    super.key,
    required this.suggestions,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion.title),
          subtitle: Text(suggestion.subtitle ?? ''),
          leading: Icon(_getIconForType(suggestion.type)),
          onTap: () {
            // Handle suggestion selection
          },
        );
      },
    );
  }

  IconData _getIconForType(String type) {
    switch (type) {
      case 'remedy':
        return Icons.local_pharmacy;
      case 'condition':
        return Icons.healing;
      default:
        return Icons.search;
    }
  }
}