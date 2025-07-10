import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expenses.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';
import 'package:responsive_app/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              SizedBox(height: 40),
              AllExpenses(),
              SizedBox(height: 24),
              Expanded(child: QuickInvoice()),
              SizedBox(height: 32),
            ],
          ),
        ),
        SizedBox(width: 24),
        // Expanded(
        //   flex: 2,
        //   child: Column(
        //     children: [
        //       SizedBox(height: 40),
        //       Expanded(flex: 3, child: MyCard()),
        //       SizedBox(height: 24),
        //       Expanded(flex: 1, child: Income()),
        //       SizedBox(height: 32),
        //     ],
        //   ),
        // ),
        SizedBox(width: 32),
      ],
    );
  }
}
