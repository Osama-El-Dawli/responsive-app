import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.color,
  });
  final String title;
  final Color backgroundColor, color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.styleSemiBold18.copyWith(color: color),
        ),
      ),
    );
  }
}
