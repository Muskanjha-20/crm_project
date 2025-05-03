import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomTotalExpenseStatusWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final String count;

  const CustomTotalExpenseStatusWidget({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.26,
      padding: const EdgeInsets.only(left: 7, right: 5, top: 7),
      decoration: BoxDecoration(
        color: AppColors.gridBoxColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gridBorderColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: iconColor),
              const SizedBox(width: 2),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                count,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
