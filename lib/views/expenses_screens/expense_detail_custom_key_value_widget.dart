import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomKeyValueWidget extends StatelessWidget {
  final String label;
  final String value;

  const CustomKeyValueWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.greyTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 2),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.lightGreyTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
