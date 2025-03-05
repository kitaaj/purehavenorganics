import 'package:flutter/material.dart';
import 'package:purehavenorganics/domain/entities/remedies_by_category.dart';
import 'package:purehavenorganics/domain/entities/remedy_by_health_category.dart';

// Create an abstract class to define the common interface
abstract class RemedyCardData {
  String get remedyName;
  String? get scientificName;
  List<String> get chipLabels;
}

// Create adapters for both entity types
class RemediesByCategoryAdapter implements RemedyCardData {
  final RemediesByCategory remedy;

  RemediesByCategoryAdapter(this.remedy);

  @override
  String get remedyName => remedy.remedyName;

  @override
  String? get scientificName => remedy.scientificName;

  @override
  List<String> get chipLabels => [
    ...(remedy.primaryUses ?? []),
    ...(remedy.commonNames ?? []),
  ];
}

class RemedyByHealthCategoryAdapter implements RemedyCardData {
  final RemedyByHealthCategory remedy;

  RemedyByHealthCategoryAdapter(this.remedy);

  @override
  String get remedyName => remedy.remedyName;

  @override
  String? get scientificName => null; // Add if available in your entity

  @override
  List<String> get chipLabels => [
    remedy.categoryName,
    'Effectiveness: ${remedy.effectivenessRating}',
  ];
}

class RemedyByCategoryCard extends StatelessWidget {
  final dynamic remedyData;
  final VoidCallback? onTap;

  const RemedyByCategoryCard({super.key, required this.remedyData, this.onTap});

  RemedyCardData get _adaptedData {
    if (remedyData is RemediesByCategory) {
      return RemediesByCategoryAdapter(remedyData as RemediesByCategory);
    } else if (remedyData is RemedyByHealthCategory) {
      return RemedyByHealthCategoryAdapter(
        remedyData as RemedyByHealthCategory,
      );
    }
    throw ArgumentError('Unsupported remedy data type');
  }

  @override
  Widget build(BuildContext context) {
    final data = _adaptedData;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              color: Colors.grey.shade500,
              child: Center(
                child: Icon(
                  Icons.healing,
                  size: 48,
                  color: Colors.grey.shade400,
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
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black87, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.remedyName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.clip,
                      softWrap: false,
                    ),
                    if (data.scientificName != null) ...[
                      Text(
                        data.scientificName!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white70,
                          fontStyle: FontStyle.italic,
                        ),
                        overflow: TextOverflow.clip,
                        softWrap: false,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
