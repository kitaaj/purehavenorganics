import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:purehavenorganics/presentation/providers/remedy_providers.dart';
import 'package:purehavenorganics/presentation/providers/saved_items_provider.dart';
import 'package:purehavenorganics/presentation/widgets/animations/fade_in_up.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/detail_sections.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/preparation_methods_section.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/safety_info_section.dart';
import 'package:purehavenorganics/presentation/widgets/remedy/usage_instructions_section.dart';
import 'package:share_plus/share_plus.dart';
import 'package:transparent_image/transparent_image.dart';

class RemedyDetailView extends ConsumerStatefulWidget {
  final Remedy remedy;

  const RemedyDetailView({required this.remedy, super.key});

  @override
  ConsumerState<RemedyDetailView> createState() => _RemedyDetailScreenState();
}

class _RemedyDetailScreenState extends ConsumerState<RemedyDetailView> {
  final _scrollController = ScrollController();
  bool _showTitle = false;
  // bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset > 100 && !_showTitle) {
      setState(() => _showTitle = true);
    } else if (_scrollController.offset <= 100 && _showTitle) {
      setState(() => _showTitle = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildAppBar(context),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      <Widget?>[
                        FadeInUp(
                          delay: const Duration(milliseconds: 200),
                          child: _buildScientificName()!,
                        ),
                        FadeInUp(
                          delay: const Duration(milliseconds: 300),
                          child: _buildCategorySection(),
                        ),
                        FadeInUp(
                          delay: const Duration(milliseconds: 400),
                          child: _buildCommonNames()!,
                        ),
                        if (widget.remedy.activeComponents != null)
                          FadeInUp(
                            delay: const Duration(milliseconds: 500),
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
                                  components: widget.remedy.activeComponents!,
                                ),
                              ],
                            ),
                          ),

                        // Preparation Methods
                        if (widget.remedy.preparationMethods != null &&
                            widget.remedy.preparationMethods!.isNotEmpty)
                          FadeInUp(
                            delay: const Duration(milliseconds: 700),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Consumption Forms:',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                PreparationMethodsSection(
                                  methods: widget.remedy.preparationMethods!,
                                ),
                              ],
                            ),
                          ),

                        // // Conditions Treated
                        // if (widget.remedy.conditionsTreated != null &&
                        //     widget.remedy.conditionsTreated!.isNotEmpty)
                        //   FadeInUp(
                        //     delay: const Duration(milliseconds: 800),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text(
                        //           'Conditions Treated:',
                        //           style: Theme.of(context).textTheme.titleMedium,
                        //         ),
                        //         const SizedBox(height: 8),
                        //         ConditionsTreatedSection(
                        //           conditions: widget.remedy.condi!,
                        //         ),
                        //       ],
                        //     ),
                        //   ),

                        // Usage Instructions
                        if (widget.remedy.instructions != null)
                          FadeInUp(
                            delay: const Duration(milliseconds: 900),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Usage Instructions:',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                UsageInstructionsSection(
                                  instructions: widget.remedy.instructions!,
                                ),
                              ],
                            ),
                          ),

                        // Safety Information
                        FadeInUp(
                          delay: const Duration(milliseconds: 1000),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Safety Information:',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              SafetyInformationSection(remedy: widget.remedy),
                            ],
                          ),
                        ),
                      ].where((widget) => widget != null).map((e) => e!).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final savedItemsAsync = ref.watch(savedItemsProvider);

    return SliverAppBar.large(
      expandedHeight: 250,
      pinned: true,
      centerTitle: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: Navigator.of(context).pop,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () => _shareRemedy(context),
        ),
        savedItemsAsync.when(
          data:
              (savedItems) => IconButton(
                icon: Icon(
                  savedItems.remedies.any(
                        (r) => r.remedyId == widget.remedy.remedyId,
                      )
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                ),
                onPressed: () => _toggleBookmark(context),
              ),
          loading:
              () => const IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: null,
              ),
          error:
              (_, __) => IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed:
                    () => _showErrorSnackBar(
                      context,
                      'Unable to access saved items',
                    ),
              ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: AnimatedOpacity(
          opacity: _showTitle ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: Text(widget.remedy.name, style: const TextStyle(fontSize: 16)),
        ),
        background: Stack(
            fit: StackFit.expand,
            children: [
              widget.remedy.imgUrl != null
                  ? CachedNetworkImage(
                    imageUrl: widget.remedy.imgUrl!,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 500),
                    fadeInCurve: Curves.easeIn,
                    placeholder:
                        (context, url) =>
                            Image.memory(kTransparentImage, fit: BoxFit.cover),
                    errorWidget:
                        (context, url, error) => Text('Failed to load image'),
                  )
                  : Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                        ],
                      ),
                    ),
                  ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 18.0,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black87, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        widget.remedy.name,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    
    );
  }

  Widget? _buildScientificName() {
    if (widget.remedy.scientificName == null) return null;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        widget.remedy.scientificName!,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontStyle: FontStyle.italic,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    final category = ref.read(categoryNameProvider(widget.remedy.categoryId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text('Category', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(category, style: const TextStyle(fontSize: 16)),
        ),
      ],
    );
  }

  Widget? _buildCommonNames() {
    if (widget.remedy.commonNames!.isEmpty) return null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text('Common names', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children:
              widget.remedy.commonNames!
                  .map(
                    (name) => Chip(
                      label: Text(name, style: TextStyle(fontSize: 12.0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }

  void _toggleBookmark(BuildContext context) {
    ref.read(savedItemsProvider.notifier).toggleRemedy(widget.remedy);

    // Show feedback
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          ref
                      .read(savedItemsProvider)
                      .value
                      ?.remedies
                      .any((r) => r.remedyId == widget.remedy.remedyId) ??
                  false
              ? '${widget.remedy.name} added to favorites'
              : '${widget.remedy.name} removed from favorites',
        ),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            ref.read(savedItemsProvider.notifier).toggleRemedy(widget.remedy);
          },
        ),
      ),
    );
  }

  Future<void> _shareRemedy(BuildContext context) async {
    try {
      final shareText = '''
Check out this natural remedy: ${widget.remedy.name}

${widget.remedy.scientificName ?? ''}

Primary Effects:
${widget.remedy.primaryEffects?.join('\n') ?? 'Not specified'}

${widget.remedy.instructions ?? ''}

Shared from Pure Haven Organics
''';

      await Share.share(
        shareText,
        subject: 'Natural Remedy: ${widget.remedy.name}',
      );
    } catch (e) {
      if (!context.mounted) return;
      _showErrorSnackBar(context, 'Unable to share remedy');
    }
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
