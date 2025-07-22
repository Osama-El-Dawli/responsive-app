import 'package:flutter/material.dart';
import 'package:responsive_app/models/transaction_model.dart';
import 'package:responsive_app/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7CD87A),
          ),
        ),
      ),
    );
  }
}
