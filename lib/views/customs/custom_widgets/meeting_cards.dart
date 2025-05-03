import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class MeetingCards extends StatelessWidget {
  final bool isOnline;
  const MeetingCards({super.key, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 3, top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.gridBoxColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gridBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                maxRadius: 12,
                backgroundColor: AppColors.primaryColor,
                // backgroundColor: Colors.purple,
                child: Icon(
                  Icons.video_camera_back_rounded,
                  size: 13,
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(width: 2),

              Text(
                "Townhall Meeting",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Spacer(),
              Icon(Icons.watch_later, size: 17, color: AppColors.gridIconColor),
              SizedBox(width: 2),

              Text("01:30 AM - 02:00 AM", style: TextStyle(fontSize: 12)),
            ],
          ),
          const SizedBox(height: 8),
          Divider(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Meeting With : Arpit Jain",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Meeting Mode : ${isOnline ? "Online" : "Offline"}",
                    style: const TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  if (isOnline)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Join Meet",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
