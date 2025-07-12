import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
