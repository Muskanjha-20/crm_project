import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/expenses_screens/widget/custom_total_expense_status_widget.dart.dart';

class TotalExpensesBox extends StatelessWidget {
  const TotalExpensesBox({super.key, required this.expenseData});

  final List<Map<String, dynamic>> expenseData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10),
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total Expense',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.blackTextColor,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Period 1 Jan 2024 - 30 Dec 2024',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.lightGreyTextColor,
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: expenseData.length,
              itemBuilder: (context, index) {
                final data = expenseData[index];
                return CustomTotalExpenseStatusWidget(
                  title: data['title'],
                  icon: data['icon'],
                  iconColor: data['iconColor'],
                  count: data['count'],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
            ),
          ),
        ],
      ),
    );
  }
}
