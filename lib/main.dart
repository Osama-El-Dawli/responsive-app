import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/adaptive_layout.dart';
import 'package:responsive_app/views/dashboard_desktop_layout.dart';

void main() {
  runApp(const DashBoardApp());
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffF7F9FA)),
      debugShowCheckedModeBanner: false,
      home: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
