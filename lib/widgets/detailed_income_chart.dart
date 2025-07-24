import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          radius: activeIndex == 0 ? 60 : 50,
          title: activeIndex == 0 ? 'Design service' : '40%',
          value: 40,
          color: const Color(0xff2088C7),
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? -1.5 : null,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          radius: activeIndex == 1 ? 60 : 50,
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          color: const Color(0xff4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          radius: activeIndex == 2 ? 60 : 50,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          radius: activeIndex == 3 ? 60 : 50,
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
