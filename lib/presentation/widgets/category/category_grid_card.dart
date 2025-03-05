import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';
import 'package:purehavenorganics/presentation/widgets/category/category_pattern_painter.dart';
@immutable
class CategoryGridCard extends StatelessWidget {
  final HealthCategory category;
  final VoidCallback onTap;

  const CategoryGridCard({
    required this.category,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shadowColor: Theme.of(context).colorScheme.shadow.withValues(alpha:0.2),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: category.isLeaf ? 160 : 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primary,
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomPaint(
                  painter: CategoryPatternPainter(
                    color: Theme.of(context).colorScheme.onPrimary.withValues(alpha:0.1),
                  ),
                ),
              ),
              // Content
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _getCategoryIcon(),
                      size: 48,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      category.displayName,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              if (!category.isLeaf)
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary.withValues(alpha:0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 20,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getCategoryIcon() {
    // Add custom icons based on category name
    switch (category.displayName.toLowerCase()) {
      case 'digestive':
        return Icons.accessibility;
      case 'respiratory':
        return Icons.air;
      case 'skin':
        return Icons.face;
      case 'mental':
        return Icons.psychology;
      default:
        return Icons.healing;
    }
  }
}

