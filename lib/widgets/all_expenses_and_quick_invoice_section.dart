import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expenses.dart';
import 'package:responsive_app/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const  AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: AllExpenses()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(child: QuickInvoice()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}
