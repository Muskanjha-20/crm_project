// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:list_project/screens/dashboard_screen/grid_cards.dart';
// import 'package:list_project/screens/dashboard_screen/menu_buttons.dart';
// import 'package:list_project/utils/constants/colors.dart';

// class Test2DashboardScreen extends StatelessWidget {
//   const Test2DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
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
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const CircleAvatar(
//                       radius: 25,
//                       backgroundImage: AssetImage("assets/image.png"),
//                     ),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text(
//                             "Good Morning, Ashish",
//                             style: TextStyle(
//                               fontSize: 22,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "Don’t miss your clock in schedule",
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: AppColors.whiteTextColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Icon(
//                       Icons.notifications_sharp,
//                       color: Colors.white,
//                       size: 28,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: const TextField(
//                     decoration: InputDecoration(
//                       hintText: "Add & Search Customer",
//                       hintStyle: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.fieldTextColor,
//                         fontSize: 12,
//                       ),
//                       border: InputBorder.none,
//                       icon: Icon(
//                         Icons.search_rounded,
//                         color: AppColors.primaryColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: AppColors.whiteBackgroundColor,
//                       // color: const Color(0xFFF5F6FA),
//                       // color: Colors.pink,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     padding: const EdgeInsets.all(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: const [
//                             Expanded(
//                               child: Text(
//                                 "Customer Relationship Management",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 15,
//                                   color: AppColors.blackTextColor,
//                                 ),
//                               ),
//                             ),
//                             Icon(
//                               Icons.calendar_month_outlined,
//                               size: 20,
//                               color: AppColors.primaryColor,
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 12),
//                         GridView.count(
//                           crossAxisCount: 2,
//                           shrinkWrap: true,
//                           crossAxisSpacing: 30,
//                           mainAxisSpacing: 10,
//                           physics: const NeverScrollableScrollPhysics(),
//                           childAspectRatio: 1.8,
//                           children: [
//                             const GridCards(
//                               title: "Deals",
//                               count: "50",
//                               icon: Icons.handshake_outlined,
//                             ),
//                             const GridCards(
//                               title: "Won",
//                               count: "12",
//                               icon: Icons.emoji_events,
//                             ),
//                             const GridCards(
//                               title: "Leads",
//                               count: "80",
//                               icon: Icons.person_add_alt_sharp,
//                             ),

//                             GridCards(
//                               title: 'follow-up',
//                               count: '20',
//                               icon: Icons.person_remove_alt_1_rounded,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   GridView.count(
//                     crossAxisCount: 3,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     childAspectRatio: 1,
//                     children: const [
//                       MenuButtons(
//                         icon: CupertinoIcons.chat_bubble_text_fill,
//                         label: "Chat",
//                       ),
//                       MenuButtons(
//                         icon: Icons.person_outline,
//                         label: "Follow-Up",
//                       ),
//                       MenuButtons(icon: Icons.person_add_alt, label: "Add New"),
//                       MenuButtons(
//                         icon: Icons.compare_arrows,
//                         label: "Transfer",
//                       ),
//                       MenuButtons(icon: Icons.groups, label: "Groups"),
//                       MenuButtons(
//                         icon: Icons.pie_chart_outline,
//                         label: "Status",
//                       ),
//                       MenuButtons(icon: Icons.favorite_border, label: "Deals"),
//                       MenuButtons(icon: Icons.filter_alt, label: "Funnel"),
//                       MenuButtons(
//                         icon: Icons.note_add_rounded,
//                         label: "Reports",
//                       ),
//                     ],
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
