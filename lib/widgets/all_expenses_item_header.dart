import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.iconColor,
    this.shapeColor,
  });
  final String image;
  final Color? iconColor, shapeColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: shapeColor ?? const Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              iconColor ?? Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: iconColor ?? Color(0xFF064061),
        ),
      ],
    );
  }
}
