import 'package:flutter/material.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/customs/custom_widgets/grid_cards.dart';
import 'package:list_project/views/customs/custom_widgets/menu_buttons.dart';
import 'package:list_project/views/constants/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CustomAppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: false,
          titleColor: AppColors.whiteColor,
          title: 'Good Morning, Ashish',
          description: 'Don’t miss your clock in schedule',
          prefix: Padding(
            padding: const EdgeInsets.only(left: 10),

            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage("assets/image.png"),
            ),
          ),
          suffix: Icon(
            Icons.notifications_sharp,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(80),
      //   child: Container(
      //     padding: const EdgeInsets.only(
      //       top: 35,
      //       // bottom: 15,
      //       left: 10,
      //       right: 10,
      //     ),

      //     color: AppColors.primaryColor,

      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Row(
      //           children: [
      //             const CircleAvatar(
      //               radius: 23,
      //               backgroundImage: AssetImage("assets/image.png"),
      //             ),
      //             const SizedBox(width: 12),
      //             Expanded(
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: const [
      //                   Text(
      //                     "Good Morning, Ashish",
      //                     style: TextStyle(
      //                       fontSize: 19,
      //                       color: Colors.white,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   Text(
      //                     "Don’t miss your clock in schedule",
      //                     style: TextStyle(
      //                       fontSize: 13,
      //                       fontWeight: FontWeight.w500,
      //                       color: AppColors.whiteTextColor,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             const Icon(
      //               Icons.notifications_sharp,
      //               color: Colors.white,
      //               size: 28,
      //             ),
      //           ],
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
                padding: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Add & Search Customer",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.fieldTextColor,
                          fontSize: 12,
                        ),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search_rounded,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(top: 85, left: 10, right: 10),

                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),

                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteBackgroundColor,

                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "Customer Relationship Management",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: AppColors.blackTextColor,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.calendar_month_outlined,
                                size: 20,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 10,
                            physics: const NeverScrollableScrollPhysics(),
                            childAspectRatio: 2,
                            children: [
                              const GridCards(
                                title: "Deals",
                                count: "50",
                                icon: Icons.handshake_outlined,
                              ),
                              const GridCards(
                                title: "Won",
                                count: "12",
                                icon: Icons.emoji_events,
                              ),
                              const GridCards(
                                title: "Leads",
                                count: "80",
                                icon: Icons.person_add_alt_sharp,
                              ),

                              GridCards(
                                title: 'follow-up',
                                count: '20',
                                icon: Icons.person_remove_alt_1_rounded,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 1,
                      children: const [
                        MenuButtons(
                          icon: Icons.chat_bubble_rounded,
                          label: "Chat",
                        ),
                        MenuButtons(icon: Icons.person, label: "Follow-Up"),
                        MenuButtons(icon: Icons.person_add, label: "Add New"),
                        MenuButtons(
                          icon: Icons.arrow_circle_left_sharp,
                          label: "Transfer",
                        ),
                        MenuButtons(icon: Icons.group_add, label: "Groups"),
                        MenuButtons(
                          icon: Icons.run_circle_rounded,
                          label: "Status",
                        ),
                        MenuButtons(
                          icon: Icons.handshake_rounded,
                          label: "Deals",
                        ),
                        MenuButtons(icon: Icons.filter_alt, label: "Funnel"),
                        MenuButtons(
                          icon: Icons.note_add_rounded,
                          label: "Reports",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
