import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/income_chart.dart';
import 'package:responsive_app/widgets/income_details.dart';
import 'package:responsive_app/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
