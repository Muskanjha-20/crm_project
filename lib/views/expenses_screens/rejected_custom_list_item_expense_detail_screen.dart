import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/expenses_screens/expense_detail_custom_key_value_widget.dart';

class CustomCommonForAllExpenseDetailScreen extends StatelessWidget {
  final String date;
  final String appBarTitle;
  final String type;
  final String amount;
  final String paymantMode;
  final String? transactionID;
  final String? approvedDate;
  final String? approvedBy;
  final String expenseStatus;
  final Color expenseStatusColor;

  const CustomCommonForAllExpenseDetailScreen({
    super.key,
    required this.date,
    required this.type,
    required this.amount,
    required this.appBarTitle,
    required this.paymantMode,
    this.approvedDate,
    this.approvedBy,
    this.transactionID,
    required this.expenseStatus,
    required this.expenseStatusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: appBarTitle,
          titleColor: AppColors.blackTextColor,
          showBackButton: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.whiteBackgroundColor,
                // color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.note_add_sharp, color: AppColors.primaryColor),
                      const SizedBox(width: 4),
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(),
                  const SizedBox(height: 5),

                  CustomKeyValueWidget(label: 'Expense Type', value: type),
                  CustomKeyValueWidget(label: 'Total Expense', value: amount),
                  CustomKeyValueWidget(
                    label: 'Payment Mode',
                    value: paymantMode,
                  ),
                  if (transactionID != null)
                    CustomKeyValueWidget(
                      label: 'Transaction ID',
                      value: transactionID!,
                    ),
                  if (approvedDate != null)
                    CustomKeyValueWidget(
                      label: 'Expense Approved Date',
                      value: approvedDate!,
                    ),
                  if (approvedBy != null)
                    CustomKeyValueWidget(
                      label: 'Expense Approved By',
                      value: approvedBy!,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                expenseStatus,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: expenseStatusColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
