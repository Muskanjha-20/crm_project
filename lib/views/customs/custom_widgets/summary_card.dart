import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final int count;
  final Color circleColor;
  final IconData icon;
  const SummaryCard({
    super.key,
    required this.title,
    required this.count,
    required this.circleColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.only(left: 6, top: 10, right: 2),
      decoration: BoxDecoration(
        color: AppColors.gridBoxColor,
        // color: Colors.pink,
        border: Border.all(color: AppColors.gridBorderColor),

        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 10,
                backgroundColor: circleColor,
                child: Icon(
                  icon,
                  size: 12,
                  color: AppColors.whiteBackgroundColor,
                ),
              ),
              SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            "$count",
            style: TextStyle(
              color: AppColors.blackTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
