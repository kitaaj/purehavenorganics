import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RemedyDetailScreen extends ConsumerWidget {
  final int remedyId;

  const RemedyDetailScreen({
    required this.remedyId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Implementation coming next...
        ],
      ),
    );
  }
}