import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String text;
  final Widget? image;
  final int minLines;
  final int? maxLines;
  final TextEditingController? controller;

  const CustomTextFieldWidget({
    super.key,
    required this.text,
    this.image,
    this.minLines = 5,
    this.maxLines,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.secondaryColor),
        ),
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.fieldTextColor,
        ),
        prefixIcon: image,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      style: TextStyle(fontSize: 14, color: AppColors.blackTextColor),
    );
  }
}
