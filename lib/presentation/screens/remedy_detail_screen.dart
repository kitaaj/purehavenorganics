import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purehavenorganics/core/utils/remedy/remedy_detail_arguments.dart';
import 'package:purehavenorganics/presentation/screens/remedy_detail_view.dart';

class RemedyDetailScreen extends ConsumerWidget {
  final RemedyDetailArguments args;

  const RemedyDetailScreen({
    required this.args,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (args.directRemedy != null) {
      return RemedyDetailView(remedy: args.directRemedy!);
    }

    return args.asyncRemedy!.when(
      data: (remedy) => RemedyDetailView(remedy: remedy),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Text('Error loading remedy: $error'),
      ),
    );
  }
}
