import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomExpenseDetailIconDateWidget extends StatelessWidget {
  final String date;
  const CustomExpenseDetailIconDateWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.note_add_sharp, color: AppColors.primaryColor),
        const SizedBox(width: 4),
        Text(
          date,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
