import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text('Monthly', style: AppStyles.styleMedium16),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: 1.571,
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
