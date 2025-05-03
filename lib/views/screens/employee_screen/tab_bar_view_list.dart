import 'package:flutter/material.dart';
import 'package:list_project/views/screens/employee_screen/review_detail_tab.dart';

class TabBarViewList extends StatelessWidget {
  const TabBarViewList({super.key});

  @override
  Widget build(BuildContext context) {
    final reviewDetails = [
      {
        "date": '15 April 2025',
        "leaveDays": '09 May - 09 May',
        "leaveType": "Casual Leave",
        "totalLeave": '1 day',
      },
      {
        "date": '14 April 2025',
        "leaveDays": '07 May - 08 May',
        "leaveType": "Comp-off",
        "totalLeave": '2 days',
      },
      {
        "date": '13 April 2025',
        "leaveDays": '09 May - 10 May',
        "leaveType": "Medical Leave",
        "totalLeave": '2 days',
      },
      {
        "date": '12 April 2025',
        "leaveDays": '03 May - 06 May',
        "leaveType": "Restricted Leave",
        "totalLeave": '2 days',
      },
      {
        "date": '11 April 2025',
        "leaveDays": '02 May - 07 May',
        "leaveType": "Comp-off",
        "totalLeave": '2 days',
      },
      {
        "date": '10 April 2025',
        "leaveDays": '04 May - 07 May',
        "leaveType": "Casual Leave",
        "totalLeave": '1 day',
      },
    ];

    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemCount: reviewDetails.length,
      itemBuilder: (context, index) {
        final item = reviewDetails[index];
        return ReviewDetailTab(
          date: item['date']!,
          leaveDays: item['leaveDays']!,
          leaveType: item['leaveType']!,
          totalLeave: item['totalLeave']!,
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
    );
  }
}
