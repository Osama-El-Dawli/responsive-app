import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item_model.dart';
import 'package:responsive_app/utils/app_assets.dart';
import 'package:responsive_app/widgets/all_expenses_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  int selectedIndex = 0;
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2025',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2025',
      price: r'$15,000',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpences,
      title: 'Expenses',
      date: 'April 2025',
      price: r'$5,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: (index == 1)
                  ? const EdgeInsets.symmetric(horizontal: 12)
                  : EdgeInsetsGeometry.zero,
              child: AllExpensesItem(
                itemModel: item,
                isSelected: index == selectedIndex,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
