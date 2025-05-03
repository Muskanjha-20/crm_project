import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';

class CustomListItemExpenseWidget extends StatelessWidget {
  final String date;
  final String type;
  final String amount;
  final VoidCallback onTap;

  final String? status;
  final String? statusDate;
  final String? userName;
  final String? userImageUrl;
  final Color? statusColor;

  const CustomListItemExpenseWidget({
    super.key,
    required this.date,
    required this.type,
    required this.amount,
    this.status,
    this.statusDate,
    this.userName,
    this.userImageUrl,
    this.statusColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: AppColors.whiteBackgroundColor,
          // color: Colors.pink,
          borderRadius: BorderRadius.circular(12),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey,
          //     blurRadius: 6,
          //     offset: const Offset(0, 2),
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Row
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 18,
                  color: AppColors.primaryColor,
                  // color: Colors.amber,
                ),
                const SizedBox(width: 6),
                Text(date, style: const TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.gridBoxColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.gridBorderColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type",
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.lightGreyTextColor,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        type,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total Expense",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.lightGreyTextColor,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        amount,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // const SizedBox(height: 10),

            // if (status != null && statusDate != null)
            //   Row(
            //     children: [
            //       Icon(
            //         Icons.verified,
            //         color: statusColor ?? Colors.grey,
            //         size: 16,
            //       ),
            //       const SizedBox(width: 4),
            //       Text(
            //         "$status at $statusDate",
            //         style: TextStyle(
            //           color: statusColor ?? Colors.grey,
            //           fontSize: 13,
            //         ),
            //       ),
            //       const Spacer(),
            //       if (userImageUrl != null)
            //         CircleAvatar(
            //           radius: 12,
            //           backgroundImage: NetworkImage(userImageUrl!),
            //         ),
            //       if (userName != null) ...[
            //         const SizedBox(width: 6),
            //         Text(
            //           userName!,
            //           style: const TextStyle(
            //             fontSize: 13,
            //             fontWeight: FontWeight.w500,
            //           ),
            //         ),
            //       ],
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }
}
