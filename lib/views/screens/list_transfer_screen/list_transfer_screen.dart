import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/screens/list_transfer_screen/list_transfer_detailed_card.dart';

class ListTransferScreen extends StatefulWidget {
  const ListTransferScreen({super.key});

  @override
  State<ListTransferScreen> createState() => _ListTransferScreenState();
}

class _ListTransferScreenState extends State<ListTransferScreen> {
  final List<Map<String, String>> transferList = [
    {
      "insurancePlane": "Family Insurance Plan",
      "currentOwnerName": "Ashish Chourasia",
      "newOwnerName": "Rahul Sharma",
      "dealStatus": "Connected",
      "transferDate": "19-04-2025",
    },
    {
      "insurancePlane": "Full Family Insurance Plan",
      "currentOwnerName": "Ashish Chourasia",
      "newOwnerName": "Rahul Sharma",
      "dealStatus": "new",
      "transferDate": "19-04-2025",
    },
    {
      "insurancePlane": "Family Insurance Plan",
      "currentOwnerName": "Ashish Chourasia",
      "newOwnerName": "Rahul Sharma",
      "dealStatus": "Connected",
      "transferDate": "19-04-2025",
    },
    {
      "insurancePlane": "Family Insurance Plan",
      "currentOwnerName": "Ashish Chourasia",
      "newOwnerName": "Rahul Sharma",
      "dealStatus": "Connected",
      "transferDate": "19-04-2025",
    },
    {
      "insurancePlane": "Family Insurance Plan",
      "currentOwnerName": "Ashish Chourasia",
      "newOwnerName": "Rahul Sharma",
      "dealStatus": "Connected",
      "transferDate": "19-04-2025",
    },
    {
      "insurancePlane": "Family Insurance Plan",
      "currentOwnerName": "Ashish Chourasia",
      "newOwnerName": "Rahul Sharma",
      "dealStatus": "Connected",
      "transferDate": "19-04-2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: CustomAppBar(title: 'Lead Transfer'),
      // ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          centerTitle: true,
          title: 'Lead Transfer',
          titleColor: AppColors.blackTextColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Lead Transfer List",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "It is a long established fact that a reader distracted",
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade50,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                      Icons.filter_list_outlined,
                      color: Colors.deepOrange,
                      size: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: transferList.length,
                itemBuilder: (context, index) {
                  final item = transferList[index];
                  return ListTransferDetailedCard(
                    insurancePlane: item["insurancePlane"]!,
                    currentOwnerName: item["currentOwnerName"]!,
                    newOwnerName: item["newOwnerName"]!,
                    dealStatus: item["dealStatus"]!,
                    transferDate: item["transferDate"]!,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
