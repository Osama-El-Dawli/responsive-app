import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_button.dart';
import 'package:responsive_app/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backgroundColor: Colors.transparent,
                color: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                backgroundColor: Color(0xff4EB7F2),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
