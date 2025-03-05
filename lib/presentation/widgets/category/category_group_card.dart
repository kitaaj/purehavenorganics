import 'package:flutter/material.dart';
import 'package:purehavenorganics/core/utils/get_category_icon.dart';
import 'package:purehavenorganics/domain/entities/health_category.dart';

@immutable
class CategoryGroupCard extends StatelessWidget {
  final HealthCategory parent;
  final List<HealthCategory> children;
  final Function(HealthCategory) onCategoryTap;

  const CategoryGroupCard({
    required this.parent,
    required this.children,
    required this.onCategoryTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () => onCategoryTap(parent),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primaryContainer,
                  ],
                ),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    getHealthCategoryIcon(parent.displayName),
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      parent.displayName.trim(),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (!parent.isLeaf)
                    Icon(
                      Icons.chevron_right,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                ],
              ),
            ),
          ),
          if (children.isNotEmpty)
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: children.length,
              itemBuilder: (context, index) {
                final child = children[index];
                return ListTile(
                  leading: Icon(
                    getHealthCategoryIcon(child.displayName),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    child.displayName.trim(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  trailing:
                      child.isLeaf
                          ? const Icon(Icons.arrow_forward_ios, size: 16)
                          : const Icon(Icons.expand_more),
                  onTap: () => onCategoryTap(child),
                );
              },
            ),
        ],
      ),
    );
  }


}
