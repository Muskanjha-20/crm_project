import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class TitleDescriptionWidget extends StatelessWidget {
  final String title;
  final String trailing;
  final String description;
  const TitleDescriptionWidget({
    super.key,
    required this.title,
    required this.trailing,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 5),
            Container(
              padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
              decoration: BoxDecoration(
                color: AppColors.lightOrangeColor,

                // color: Colors.pink,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                trailing,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Text(
          description,
          style: TextStyle(
            color: AppColors.lightGreyTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
