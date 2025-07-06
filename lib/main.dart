import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/adaptive_layout.dart';
import 'package:responsive_app/views/dashboard_view.dart';

void main() {
  runApp(const DashBoardApp());
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardView(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const SizedBox(),
      ),
    );
  }
}
