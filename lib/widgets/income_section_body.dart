import 'package:flutter/material.dart';
import 'package:responsive_app/utils/size_config.dart';
import 'package:responsive_app/widgets/detailed_income_chart.dart';
import 'package:responsive_app/widgets/income_chart.dart';
import 'package:responsive_app/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          )
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
