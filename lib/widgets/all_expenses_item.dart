import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item_model.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isSelected ? const Color(0xff4DB7F2) : Colors.white;
    final borderSide = isSelected
        ? BorderSide.none
        : const BorderSide(width: 1, color: Color(0xffF1F1F1));

    final titleStyle = isSelected
        ? AppStyles.styleMedium16.copyWith(color: Colors.white)
        : AppStyles.styleMedium16;

    final dateStyle = isSelected
        ? AppStyles.styleRegular14.copyWith(color: const Color(0xffFAFAFA))
        : AppStyles.styleRegular14;

    final priceStyle = isSelected
        ? AppStyles.styleSemiBold24.copyWith(color: Colors.white)
        : AppStyles.styleSemiBold24;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: borderSide,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            iconColor: isSelected ? Colors.white : null,
            shapeColor: isSelected ? Colors.white10 : null,
          ),
          const SizedBox(height: 34),
          Text(itemModel.title, style: titleStyle),
          const SizedBox(height: 8),
          Text(itemModel.date, style: dateStyle),
          const SizedBox(height: 16),
          Text(itemModel.price, style: priceStyle),
        ],
      ),
    );
  }
}
