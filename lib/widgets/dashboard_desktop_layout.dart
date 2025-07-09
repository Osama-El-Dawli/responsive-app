import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/all_expenses.dart';
import 'package:responsive_app/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(height: 40),
              Expanded(child: AllExpenses()),
              SizedBox(height: 24),
            ],
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
