import 'package:flutter/material.dart';
import 'package:responsive_app/models/income_item_model.dart';
import 'package:responsive_app/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeItemModel> items = [
    IncomeItemModel(
      dotColor: Color(0xff208BC7),
      title: 'Design service',
      percent: '40%',
    ),
    IncomeItemModel(
      dotColor: Color(0xff4DB7F2),
      title: 'Design product',
      percent: '25%',
    ),
    IncomeItemModel(
      dotColor: Color(0xff064060),
      title: 'Product royalti',
      percent: '20%',
    ),
    IncomeItemModel(
      dotColor: Color(0xffE2DECD),
      title: 'Other',
      percent: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(model: items[index]);
      },
    );
  }
}
