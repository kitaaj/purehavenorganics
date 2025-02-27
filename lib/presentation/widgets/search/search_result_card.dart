import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/utils/get_icon_for_type.dart';
import 'package:purehavenorganics/domain/entities/search_result.dart' show SearchResult;

class SearchResultCard extends StatelessWidget {
  final SearchResult result;

  const SearchResultCard({
    required this.result,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: InkWell(
        onTap: () {
          // Navigate based on result type
          switch (result.type) {
            case 'remedy':
              Navigator.pushNamed(
                context,
                '/remedy-detail',
                arguments: result.id,
              );
              break;
            case 'condition':
              Navigator.pushNamed(
                context,
                '/condition-detail',
                arguments: result.id,
              );
              break;
            case 'symptom':
              Navigator.pushNamed(
                context,
                '/symptom-search',
                arguments: result.title,
              );
              break;
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon based on type
              Icon(
                getIconForType(result.type),
                size: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      result.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    if (result.subtitle != null)
                      Text(
                        result.subtitle!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                  ],
                ),
              ),
              if (result.relevance != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '${(result.relevance! * 100).round()}%',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

}