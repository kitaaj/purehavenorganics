import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/main.dart';
import 'package:purehavenorganics/presentation/providers/providers.dart';
import 'package:purehavenorganics/presentation/widgets/animations/fade_in_up.dart';
import 'package:purehavenorganics/presentation/widgets/condition/conditions_treated_section.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/detail_sections.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/effectiveness_stats_section.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/preparation_methods_section.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/usage_instructions_section.dart';

class RemedyDetailScreen extends ConsumerStatefulWidget {
  final String remedyName;

  const RemedyDetailScreen({required this.remedyName, super.key});

  @override
  ConsumerState<RemedyDetailScreen> createState() => _RemedyDetailScreenState();
}

class _RemedyDetailScreenState extends ConsumerState<RemedyDetailScreen> {
  final _scrollController = ScrollController();
  bool _showTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset > 140 && !_showTitle) {
      setState(() => _showTitle = true);
    } else if (_scrollController.offset <= 140 && _showTitle) {
      setState(() => _showTitle = false);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final remedyDetails = ref.watch(remedyDetailsProvider(widget.remedyName));

    return Scaffold(
      body: remedyDetails.when(
        data:
            (remedy) => CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  pinned: true,
                  stretch: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: AnimatedOpacity(
                      opacity: _showTitle ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: Text(remedy.remedyName),
                    ),
                    background: Hero(
                      tag: 'remedy_${remedy.remedyName}',
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.primaryContainer,
                            ],
                          ),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Center(
                              child: Icon(
                                Icons.healing,
                                size: 64,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            // Gradient overlay for better text visibility
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              height: 80,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withValues(alpha: 0.5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Scientific Name with animation
                        if (remedy.scientificName != null)
                          FadeInUp(
                            child: Text(
                              remedy.scientificName!,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontStyle: FontStyle.italic),
                            ),
                          ),

                        const SizedBox(height: 16),

                        // Category with animation
                        FadeInUp(
                          delay: const Duration(milliseconds: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Category:',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(remedy.categoryName),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Common Names with animation
                        if (remedy.commonNames.isNotEmpty)
                          FadeInUp(
                            delay: const Duration(milliseconds: 200),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Also Known As:',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 4,
                                  children:
                                      (remedy.commonNames)
                                          .map(
                                            (name) => Chip(
                                              label: Text(name.toString()),
                                            ),
                                          )
                                          .toList(),
                                ),
                              ],
                            ),
                          ),

                        const SizedBox(height: 16),

                        // Active Components with animation
                        if (remedy.activeComponents.isNotEmpty)
                          FadeInUp(
                            delay: const Duration(milliseconds: 300),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Active Components:',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                ActiveComponentsSection(
                                  components: remedy.activeComponents,
                                ),
                              ],
                            ),
                          ),
                        const Divider(),
                        if (remedy.preparationMethods.isNotEmpty) ...[
                          Text(
                            'Can be consumed as:',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          PreparationMethodsSection(
                            methods: remedy.preparationMethods,
                          ),
                          const SizedBox(height: 16),
                        ],

                        if (remedy.conditionsTreated.isNotEmpty) ...[
                          Text(
                            'Conditions Treated:',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          ConditionsTreatedSection(
                            conditions: remedy.conditionsTreated,
                          ),
                          const SizedBox(height: 16),
                        ],

                        if (remedy.effectivenessStats != null) ...[
                          Text(
                            'Effectiveness:',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          EffectivenessStatsSection(
                            stats: remedy.effectivenessStats!,
                          ),
                          const SizedBox(height: 16),
                        ],

                        if (remedy.usageInstructions != null) ...[
                          Text(
                            'Usage Instructions:',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          UsageInstructionsSection(
                            instructions: remedy.usageInstructions!,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) {
          error.log();
          return Center(child: Text('Error: $error'));
        },
      ),
    );
  }
}
