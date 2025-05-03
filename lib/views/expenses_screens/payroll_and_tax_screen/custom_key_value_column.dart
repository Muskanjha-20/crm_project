import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomKeyValueColumn extends StatelessWidget {
  final String label;
  final String value;

  const CustomKeyValueColumn({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColors.greyTextColor,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: AppColors.blackTextColor,
          ),
        ),
      ],
    );
  }
}
