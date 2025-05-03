import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/expenses_screens/custom_list_item_expense_widget.dart';
import 'package:list_project/views/expenses_screens/expenses_review_list_details.dart';
import 'package:list_project/views/expenses_screens/widget/total_expenses_box.dart';

class ListItemReviewListWidget extends StatelessWidget {
  const ListItemReviewListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> expenseData = [
      {
        "title": "Total",
        "icon": Icons.card_giftcard_sharp,
        "iconColor": AppColors.primaryColor,
        "count": "₹1010",
      },
      {
        "title": "Review",
        "icon": Icons.circle,
        "iconColor": Colors.orange,
        "count": "₹455",
      },
      {
        "title": "Approved",
        "icon": Icons.circle,
        "iconColor": Colors.green,
        "count": "₹555",
      },
    ];

    final List<Map<String, String>> learningExpenses = [
      {"amount": "₹500", "date": "27 September 2024", "type": "E-Learning"},
      {"amount": "₹1200", "date": "25 September 2024", "type": "E-Learning"},
      {"amount": "₹800", "date": "20 September 2024", "type": "E-Learning"},
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TotalExpensesBox(expenseData: expenseData),
          const SizedBox(height: 10),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: learningExpenses.length,
            separatorBuilder: (context, index) => const SizedBox(height: 5),
            itemBuilder: (context, index) {
              return CustomListItemExpenseWidget(
                amount: learningExpenses[index]['amount']!,
                date: learningExpenses[index]['date']!,
                type: learningExpenses[index]['type']!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ExpensesReviewListDetails(),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
