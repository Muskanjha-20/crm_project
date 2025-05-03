import 'package:flutter/material.dart';
import 'package:list_project/views/customs/buttons/custom_flexible_button.dart';
import 'package:list_project/views/constants/colors.dart';

Future<void> showConfirmationBottomSheet({
  required BuildContext context,
  required String title,
  required String description,
  required String filledButton,
  required VoidCallback onConfirm,
  String? outlinedButton,
  VoidCallback? onCancel,
}) async {
  await showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder:
        (_) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Divider(thickness: 5, color: Colors.grey.shade300),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.greyTextColor,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomFlexibleButton(
                      text: filledButton,
                      onPressed: () {
                        Navigator.pop(context);
                        onConfirm();
                      },
                    ),
                  ),
                  if (outlinedButton != null && onCancel != null) ...[
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: CustomFlexibleButton(
                        text: outlinedButton,
                        isOutlined: true,
                        onPressed: () {
                          Navigator.pop(context);
                          onCancel();
                        },
                      ),
                    ),
                  ],
                ],
              ),

              // CustomButton(
              //   text: filledButton,
              //   onPressed: () {
              //     Navigator.pop(context);
              //     onConfirm();
              //   },
              // ),
              // if (outlinedButton != null && onCancel != null) ...[
              //   const SizedBox(height: 10),
              //   CustomOutlinedButton(
              //     text: outlinedButton,
              //     onPressed: () {
              //       Navigator.pop(context);
              //       onCancel();
              //     },
              //   ),
              // ],
            ],
          ),
        ),
  );
}
