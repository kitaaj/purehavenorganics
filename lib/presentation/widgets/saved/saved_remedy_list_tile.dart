import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedy.dart';
import 'package:transparent_image/transparent_image.dart';

class SavedRemedyListTile extends StatelessWidget {
  final Remedy remedy;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;

  const SavedRemedyListTile({
    required this.remedy,
    this.onTap,
    this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            // Image container
            remedy.imgUrl != null
                ? SizedBox(
                  height: 56,
                  width: 56,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: remedy.imgUrl!,
                        fit: BoxFit.cover,
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeInCurve: Curves.easeIn,
                        placeholder:
                            (context, url) => Image.memory(
                              kTransparentImage,
                              fit: BoxFit.cover,
                            ),
                        errorWidget:
                            (context, url, error) =>
                                Text('Failed to load image'),
                      ),
                    ],
                  ),
                )
                : SizedBox(
                  height: 200,
                  width: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          theme.colorScheme.primaryContainer,
                          theme.colorScheme.primary,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        _getRemedyIcon(remedy.name),
                        color: theme.colorScheme.onPrimary,
                        size: 32,
                      ),
                    ),
                  ),
                ),
            // Content area
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      remedy.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (remedy.scientificName != null)
                      Text(
                        remedy.scientificName!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    // Add further details as needed...
                  ],
                ),
              ),
            ),
            // Trailing widget area
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (remedy.medicalSupervisionRequired)
                  Tooltip(
                    message: 'Medical supervision required',
                    child: Icon(
                      Icons.medical_services,
                      size: 20,
                      color: theme.colorScheme.error,
                    ),
                  ),
                IconButton(
                  icon: const Icon(Icons.bookmark_remove),
                  onPressed: onRemove,
                  tooltip: 'Remove from saved',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconData _getRemedyIcon(String remedyName) {
    final name = remedyName.toLowerCase();
    if (name.contains('tea') || name.contains('leaf')) {
      return Icons.eco;
    } else if (name.contains('oil')) {
      return Icons.water_drop;
    } else if (name.contains('root') || name.contains('tuber')) {
      return Icons.grass;
    } else if (name.contains('flower') || name.contains('petal')) {
      return Icons.local_florist;
    } else if (name.contains('seed') || name.contains('grain')) {
      return Icons.grain;
    } else if (name.contains('fruit')) {
      return Icons.restaurant;
    } else {
      return Icons.healing;
    }
  }
}
