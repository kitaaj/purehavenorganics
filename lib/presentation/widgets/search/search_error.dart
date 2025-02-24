import 'package:flutter/material.dart';

class SearchError extends StatelessWidget {
  final Object error;

  const SearchError({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Search error: ${error.toString()}',
        style: TextStyle(
          color: Theme.of(context).colorScheme.error,
        ),
      ),
    );
  }
}