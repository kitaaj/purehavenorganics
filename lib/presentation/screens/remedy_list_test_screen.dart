import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';

class RemedyListScreen extends ConsumerWidget {
  const RemedyListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remediesAsync = ref.watch(allRemediesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Natural Remedies'),
      ),
      body: remediesAsync.when(
        data: (remedies) => ListView.builder(
          itemCount: remedies.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(remedies[index].name),
            subtitle: Text(remedies[index].scientificName!),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }
}