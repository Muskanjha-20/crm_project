import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class GridCards extends StatelessWidget {
  final String title;
  final String count;
  final IconData icon;
  const GridCards({
    super.key,
    required this.title,
    required this.count,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Icon(
                icon,
                // color: AppColors.gridIconColor,
                color: Colors.grey.shade400,
              ),
              SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                count,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // SizedBox(width: 5),
              CircleAvatar(
                maxRadius: 10,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 12,
                  color: AppColors.whiteBackgroundColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
