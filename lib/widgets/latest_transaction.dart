import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        SizedBox(height: 12),
        LatestTransactionListView(),
      ],
    );
  }
}
