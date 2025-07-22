import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/my_card_section.dart';
import 'package:responsive_app/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          MyCardSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          Expanded(child: TransactionHistory()),
        ],
      ),
    );
  }
}
