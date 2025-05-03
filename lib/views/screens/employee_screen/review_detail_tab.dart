import 'package:flutter/material.dart';
import 'package:list_project/views/screens/list_transfer_screen/list_transfer_screen.dart';

class ReviewDetailTab extends StatelessWidget {
  final String date;
  final String leaveType;
  final String leaveDays;
  final String totalLeave;
  final VoidCallback onTap;

  const ReviewDetailTab({
    super.key,
    required this.date,
    required this.leaveType,
    required this.leaveDays,
    required this.totalLeave,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ListTransferScreen();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 7, right: 7),
        height: MediaQuery.of(context).size.height * 0.14,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star_border_outlined, color: Colors.deepOrange),
                SizedBox(width: 5),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(Icons.circle, color: Colors.red, size: 13),
                ),
                SizedBox(width: 5),
                // SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Text(
                  leaveType,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Leave Date',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                Text(
                  'Total Leave',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  leaveDays,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                Text(
                  totalLeave,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
