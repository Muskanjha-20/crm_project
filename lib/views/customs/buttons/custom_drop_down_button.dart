import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomDropDownWidget extends StatelessWidget {
  final String text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final VoidCallback? onTap;

  const CustomDropDownWidget({
    super.key,
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.fieldTextColor),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            if (prefixIcon != null) ...[prefixIcon!, const SizedBox(width: 10)],
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.fieldTextColor,
                ),
              ),
            ),
            suffixIcon ??
                Icon(Icons.arrow_drop_down, color: AppColors.fieldTextColor),
          ],
        ),
      ),
    );
  }
}
