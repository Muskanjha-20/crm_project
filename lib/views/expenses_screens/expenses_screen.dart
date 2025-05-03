import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/customs/buttons/custom_flexible_button.dart';
import 'package:list_project/views/expenses_screens/approved_list_screen.dart';
import 'package:list_project/views/expenses_screens/list_item_review_list_widget.dart';
import 'package:list_project/views/expenses_screens/rejected_list_screen.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          titleColor: AppColors.blackTextColor,
          centerTitle: false,
          title: 'Expense Summary',
          showBackButton: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            // const SizedBox(height: 20),
            DefaultTabController(
              length: 3,

              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TabBar(
                        labelColor: Colors.white,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          // color: Colors.deepOrange,
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(text: 'Review'),
                          Tab(text: 'Approved'),
                          Tab(text: 'Rejected'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListItemReviewListWidget(),
                          ApprovedListScreen(),
                          RejectedListScreen(),
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
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: CustomFlexibleButton(text: 'Submit', onPressed: () {}),
      ),
    );
  }
}
