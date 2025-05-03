// import 'package:flutter/material.dart';
// import 'package:list_project/screens/tab_4_screen/meeting_cards.dart';
// import 'package:list_project/screens/tab_4_screen/summary_card.dart';
// import 'package:list_project/screens/tab_4_screen/task_card.dart';
// import 'package:list_project/screens/tab_4_screen/title_description_widget.dart';
// import 'package:list_project/utils/constants/colors.dart';

// class TestEmployeeTaskScreen extends StatelessWidget {
//   const TestEmployeeTaskScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(80),
//         child: Container(
//           // color: AppColors.primaryColor,
//           color: Colors.pink,
//           padding: EdgeInsets.all(10),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Challanges Awaiting",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       "Let's tackle your to do list",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: AppColors.whiteTextColor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Icon(Icons.notifications_sharp, color: Colors.white, size: 28),
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: AppColors.primaryColor,
//               borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(30),
//                 bottomRight: Radius.circular(30),
//               ),
//             ),
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//             // child: Row(
//             //   children: [
//             //     Expanded(
//             //       child: Column(
//             //         crossAxisAlignment: CrossAxisAlignment.start,
//             //         children: [
//             //           const Text(
//             //             "Challanges Awaiting",
//             //             style: TextStyle(
//             //               color: Colors.white,
//             //               fontSize: 24,
//             //               fontWeight: FontWeight.bold,
//             //             ),
//             //           ),
//             //           const SizedBox(height: 4),
//             //           Text(
//             //             "Let's tackle your to do list",
//             //             style: TextStyle(
//             //               fontSize: 14,
//             //               fontWeight: FontWeight.w500,
//             //               color: AppColors.whiteTextColor,
//             //             ),
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //     Icon(Icons.notifications_sharp, color: Colors.white, size: 28),
//             //   ],
//             // ),
//           ),

//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16),

//               child: Column(
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.vertical(
//                         top: Radius.circular(24),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 20,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Flexible(
//                                 child: Text(
//                                   'Task Summary of Your Work Today',
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 'View All',
//                                 style: TextStyle(
//                                   color: Colors.redAccent,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 3),

//                           Text(
//                             'Your current task progress',
//                             style: TextStyle(
//                               color: AppColors.greyTextColor,
//                               fontWeight: FontWeight.w400,
//                               fontSize: 12,
//                             ),
//                           ),

//                           const SizedBox(height: 12),
//                           SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 SummaryCard(
//                                   circleColor: Colors.red,
//                                   count: 5,
//                                   icon: Icons.code,
//                                   title: "To Do",
//                                 ),
//                                 SummaryCard(
//                                   circleColor: Colors.orange,
//                                   count: 2,
//                                   icon: Icons.watch_later,
//                                   title: "In Progress",
//                                 ),
//                                 SummaryCard(
//                                   circleColor: Colors.green,
//                                   count: 5,
//                                   icon: Icons.check,
//                                   title: "Done",
//                                 ),
//                               ],
//                             ),
//                           ),

//                           const SizedBox(height: 24),

//                           TitleDescriptionWidget(
//                             title: "Today Meeting",
//                             trailing: "2",
//                             description: "Your schedule for the day",
//                           ),

//                           const SizedBox(height: 12),
//                           MeetingCards(isOnline: false),
//                           const SizedBox(height: 12),
//                           MeetingCards(isOnline: true),

//                           const SizedBox(height: 24),

//                           TitleDescriptionWidget(
//                             title: "Today Task",
//                             trailing: "2",
//                             description: "The tasks assigned to you for today",
//                           ),

//                           const SizedBox(height: 12),
//                           TaskCard(),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
