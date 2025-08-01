import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widgets/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        RangeOptions(),
      ],
    );
  }
}
