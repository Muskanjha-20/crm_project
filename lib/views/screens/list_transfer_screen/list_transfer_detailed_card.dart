import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_project/views/customs/custom_widgets/custom_rich_text.dart';

class ListTransferDetailedCard extends StatelessWidget {
  final String insurancePlane;
  final String currentOwnerName;
  final String newOwnerName;
  final String dealStatus;
  final String transferDate;

  const ListTransferDetailedCard({
    super.key,
    required this.insurancePlane,
    required this.currentOwnerName,
    required this.newOwnerName,
    required this.dealStatus,
    required this.transferDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 25, right: 5),
      height: MediaQuery.of(context).size.height * 0.22,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.arrow_up_arrow_down,
                        color: Colors.deepOrange,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  insurancePlane,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 5),
              CustomRichText(label: 'Current Owner', value: currentOwnerName),
              SizedBox(height: 5),
              CustomRichText(label: 'New Owner', value: newOwnerName),
              SizedBox(height: 5),
              CustomRichText(label: 'Deal Status', value: dealStatus),
              SizedBox(height: 5),
              CustomRichText(label: 'Transfer Date', value: transferDate),
              SizedBox(height: 5),
            ],
          ),

          Expanded(
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Transfer",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
