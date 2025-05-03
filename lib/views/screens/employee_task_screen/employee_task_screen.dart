import 'package:flutter/material.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';

import 'package:list_project/views/customs/custom_widgets/meeting_cards.dart';
import 'package:list_project/views/customs/custom_widgets/summary_card.dart';
import 'package:list_project/views/customs/custom_widgets/task_card.dart';
import 'package:list_project/views/customs/custom_widgets/title_description_widget.dart';
import 'package:list_project/views/constants/colors.dart';

class EmployeeTaskScreen extends StatefulWidget {
  const EmployeeTaskScreen({super.key});

  @override
  State<EmployeeTaskScreen> createState() => _EmployeeTaskScreenState();
}

class _EmployeeTaskScreenState extends State<EmployeeTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          backgroundColor: AppColors.primaryColor,
          titleColor: AppColors.whiteColor,
          title: 'Challanges Awaiting',
          description: "Let's tackle your to do list",
          showBackButton: false,
        ),
      ),
      // backgroundColor: Colors.purple,
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(70),
      //   child: Container(
      //     // color: Colors.green,
      //     color: AppColors.primaryColor,

      //     padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      //     child: Row(
      //       children: [
      //         Expanded(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               const Text(
      //                 "Challanges Awaiting",
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               // const SizedBox(height: 4),
      //               Text(
      //                 "Let's tackle your to do list",
      //                 style: TextStyle(
      //                   fontSize: 14,
      //                   fontWeight: FontWeight.w500,
      //                   color: AppColors.whiteTextColor,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         const Icon(
      //           Icons.notifications_sharp,
      //           color: Colors.white,
      //           size: 28,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                decoration: const BoxDecoration(
                  // color: Colors.yellow,
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 3,
                          // right: 10,
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.pink,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child:
                        // const SizedBox(height: 3),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(
                                'Task Summary of Your Work Today',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackTextColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Your current task progress',
                                    style: TextStyle(
                                      color: AppColors.greyTextColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'View All',
                                    style: TextStyle(
                                      color: Colors.redAccent.shade100,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SummaryCard(
                                    circleColor: Colors.red,
                                    count: 5,
                                    icon: Icons.code,
                                    title: "To Do",
                                  ),
                                  SummaryCard(
                                    circleColor: Colors.orange,
                                    count: 2,
                                    icon: Icons.watch_later,
                                    title: "In Progress",
                                  ),
                                  SummaryCard(
                                    circleColor: Colors.green,
                                    count: 5,
                                    icon: Icons.check,
                                    title: "Done",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),

                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            TitleDescriptionWidget(
                              title: "Today Meeting",
                              trailing: "2",
                              description: "Your schedule for the day",
                            ),
                            const SizedBox(height: 12),
                            MeetingCards(isOnline: false),
                            const SizedBox(height: 12),
                            MeetingCards(isOnline: true),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          color: Colors.white,

                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            TitleDescriptionWidget(
                              title: "Today Task",
                              trailing: "2",
                              description:
                                  "The tasks assigned to you for today",
                            ),
                            const SizedBox(height: 12),

                            TaskCard(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
