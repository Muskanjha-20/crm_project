import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/expenses_screens/custom_expense_detail_icon_date_widget.dart';
import 'package:list_project/views/expenses_screens/expense_detail_custom_key_value_widget.dart';

class ExpensesApprovedListDetails extends StatefulWidget {
  const ExpensesApprovedListDetails({super.key});

  @override
  State<ExpensesApprovedListDetails> createState() =>
      _ExpensesApprovedListDetailsState();
}

class _ExpensesApprovedListDetailsState
    extends State<ExpensesApprovedListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "Approved Expense",
          titleColor: AppColors.blackTextColor,
          showBackButton: true,
          suffix: Icon(Icons.check_circle, color: Colors.green),
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
                  CustomExpenseDetailIconDateWidget(date: '18 September 2024'),
                  const SizedBox(height: 5),
                  const Divider(),
                  const SizedBox(height: 5),

                  CustomKeyValueWidget(
                    label: 'Expense Type',
                    value: 'E-Learning',
                  ),
                  CustomKeyValueWidget(label: 'Total Expense', value: '₹55'),
                  CustomKeyValueWidget(
                    label: 'Payment Mode',
                    value: 'Online Payment',
                  ),
                  CustomKeyValueWidget(
                    label: 'Transaction ID',
                    value: 'T22041823093520078965',
                  ),
                  CustomKeyValueWidget(
                    label: 'Expense Approved Date',
                    value: '19 Sep 2024',
                  ),
                  CustomKeyValueWidget(
                    label: 'Expense Approved By',
                    value: 'Aprna Jain',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Your Expense is Approved',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
