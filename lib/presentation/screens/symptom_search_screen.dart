import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/condition.dart'
    show Condition;
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/providers/symptom_search_provider.dart';
import 'package:purehavenorganics/presentation/widgets/common/error_view.dart';
import 'package:purehavenorganics/presentation/widgets/symptom/symptom_card.dart';
import 'package:purehavenorganics/presentation/widgets/utility_widgets/loading_view.dart';

class SymptomSearchScreen extends ConsumerStatefulWidget {
  final String symptom;

  const SymptomSearchScreen({required this.symptom, super.key});

  @override
  ConsumerState<SymptomSearchScreen> createState() =>
      _SymptomSearchScreenState();
}

class _SymptomSearchScreenState extends ConsumerState<SymptomSearchScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger search when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(symptomSearchProvider.notifier).searchBySymptoms([
        widget.symptom,
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(symptomSearchProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Results for "${widget.symptom}"')),
      body: searchState.when(
        data: (results) {
          if (results.isEmpty) {
            return const Center(
              child: Text('No results found for this symptom'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: results.length,
            itemBuilder: (context, index) {
              final result = results[index];
              return SymptomCard(
                result: result,
                onTap: () {
                  final condition = ref.read(
                    selectedConditionProvider(result.conditionName),
                  );
                  //TODO: Condition could be null
                  if (condition != null) {
                    _navigateToCondition(context, condition);
                  }
                },
              );
            },
          );
        },
        loading: () => const LoadingView(),
        error:
            (error, stackTrace) => ErrorView(
              error: error.toString(),
              onRetry: () {
                ref.read(symptomSearchProvider.notifier).searchBySymptoms([
                  widget.symptom,
                ]);
              },
            ),
      ),
    );
  }

  void _navigateToCondition(BuildContext context, Condition condition) {
    Navigator.pushNamed(context, '/condition-detail', arguments: condition);
  }
}
