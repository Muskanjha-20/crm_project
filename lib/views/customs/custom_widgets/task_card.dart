import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.gridBoxColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gridBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 12,
                backgroundColor: AppColors.primaryColor,
                // backgroundColor: Colors.purple,
                child: Icon(
                  Icons.electric_bolt_outlined,
                  color: AppColors.whiteColor,
                  size: 11,
                ),
              ),
              SizedBox(width: 8),
              const Text(
                "GNS Dashboard Analytics",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 181, 187, 202),
                  color: AppColors.gridBorderColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.watch_later, color: AppColors.gridIconColor),
                    SizedBox(width: 3),
                    Text(
                      "In Progress",
                      style: TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.flag, color: AppColors.whiteColor),
                    SizedBox(width: 3),
                    Text(
                      "High",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          LinearProgressIndicator(
            value: 0.85,
            backgroundColor: AppColors.gridIconColor,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
          ),
          const SizedBox(height: 12),

          Row(
            children: const [
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/image1.png'),
              ),
              // SizedBox(width: 4),
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/image2.png'),
              ),
              // SizedBox(width: 4),
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/image3.png'),
              ),
              Spacer(),
              Icon(
                Icons.calendar_month_outlined,
                size: 16,
                color: AppColors.gridIconColor,
              ),
              SizedBox(width: 4),

              Text(
                "27 April",
                style: TextStyle(
                  color: AppColors.blackTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(width: 16),
              Icon(Icons.chat, color: AppColors.gridIconColor, size: 16),
              SizedBox(width: 4),
              Text(
                "2",
                style: TextStyle(
                  color: AppColors.blackTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
