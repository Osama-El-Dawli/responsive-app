import 'package:flutter/material.dart';
import 'package:responsive_app/models/income_item_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.model});

  final IncomeItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: model.dotColor,
        ),
      ),
      title: Text(model.title, style: AppStyles.styleRegular16),
      trailing: Text(model.percent, style: AppStyles.styleMedium16),
    );
  }
}
