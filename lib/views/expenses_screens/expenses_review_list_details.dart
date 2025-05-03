import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/expenses_screens/custom_expense_detail_icon_date_widget.dart';
import 'package:list_project/views/expenses_screens/expense_detail_custom_key_value_widget.dart';

class ExpensesReviewListDetails extends StatefulWidget {
  const ExpensesReviewListDetails({super.key});

  @override
  State<ExpensesReviewListDetails> createState() =>
      _ExpensesReviewListDetailsState();
}

class _ExpensesReviewListDetailsState extends State<ExpensesReviewListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "Review Expense",
          titleColor: AppColors.blackTextColor,
          showBackButton: true,
          suffix: Icon(Icons.person_add_alt_1, color: AppColors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.whiteBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomExpenseDetailIconDateWidget(date: '27 September 2024'),
                  const SizedBox(height: 5),
                  const Divider(),
                  const SizedBox(height: 5),

                  CustomKeyValueWidget(
                    label: 'Expense Type',
                    value: 'E-Learning',
                  ),
                  CustomKeyValueWidget(label: 'Total Expense', value: '₹555'),
                  CustomKeyValueWidget(label: 'Payment Mode', value: 'Cash'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Your Expense Under Review',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
