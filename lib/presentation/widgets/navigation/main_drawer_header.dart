import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purehavenorganics/core/utils/constants/seed_color.dart';

class MainDrawerHeader extends StatelessWidget {
  const MainDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: primarySeed),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double logoSize = constraints.maxHeight * 0.5;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icon/drawer_logo.svg',
                width: logoSize,
                height: logoSize,
              ),
              const SizedBox(height: 16),
              Text(
                'Nurturing Life Naturally',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
