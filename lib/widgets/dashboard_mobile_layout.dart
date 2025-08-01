import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_app/widgets/income_section.dart';
import 'package:responsive_app/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
