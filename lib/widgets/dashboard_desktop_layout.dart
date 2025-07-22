import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/income_section.dart';
import 'package:responsive_app/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        const Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
        const SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(
              context,
            ).copyWith(scrollbars: false),
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  MyCardAndTransactionHistorySection(),
                  SizedBox(height: 20),
                  IncomeSection(),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
