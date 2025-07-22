import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widgets/dots_indicator.dart';
import 'package:responsive_app/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();

    _pageController.addListener(() {
      currentIndex = _pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('My Card', style: AppStyles.styleSemiBold20),
        const SizedBox(height: 20),
        MyCardPageView(pageController: _pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentIndex: currentIndex),
      ],
    );
  }
}
