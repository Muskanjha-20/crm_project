import 'package:flutter/material.dart';
import 'package:list_project/views/customs/buttons/custom_flexible_button.dart';
import 'package:list_project/views/customs/buttons/radio_buttons.dart';

Future<void> customShowModalBottomSheet({
  required BuildContext context,
  required String title,
  required String subtitle,
  required List<String> options,
  required ValueChanged<String> onSelected,
}) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (_) {
      return SafeArea(
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(subtitle, style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 20),
                  RadioFieldSelector(options: options, onSelected: onSelected),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: CustomFlexibleButton(
                          text: 'Cancel',
                          isOutlined: true,
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomFlexibleButton(
                          text: 'Select',
                          isOutlined: false,
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ],
                  ),

                  // CustomTwoButton(
                  //   onFilledPressed: () => Navigator.of(context).pop(),
                  //   filledButtonText: 'Select',
                  //   onOutlinedPressed: () => Navigator.of(context).pop(),
                  //   outlinedButtonText: 'Cancel',
                  // ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
