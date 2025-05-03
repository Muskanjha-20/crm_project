import 'package:flutter/material.dart';
import 'package:list_project/views/custom_bottom_navbar_screen/custom_bottom_navbar_screen.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? description;
  final Widget? prefix;
  final Widget? suffix;
  final bool? centerTitle;
  final Color backgroundColor;
  final Color titleColor;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    this.title,
    this.description,
    this.prefix,
    this.suffix,
    this.backgroundColor = Colors.white,
    this.centerTitle,
    required this.titleColor,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      actionsPadding: const EdgeInsets.only(right: 10),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: titleColor,
              ),
            ),
          if (description != null)
            Text(
              description!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.greyTextColor,
              ),
            ),
        ],
      ),
      leading:
          prefix ??
          (showBackButton
              ? InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      const Center(
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: AppColors.secondaryColor,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              : null),
      actions: suffix != null ? [suffix!] : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
