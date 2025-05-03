import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';

class SubmitExpensesScreen extends StatefulWidget {
  const SubmitExpensesScreen({super.key});

  @override
  State<SubmitExpensesScreen> createState() => _SubmitExpensesScreenState();
}

class _SubmitExpensesScreenState extends State<SubmitExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          titleColor: AppColors.blackTextColor,
          title: 'Submit Expense',
          showBackButton: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10),
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: AppColors.whiteBackgroundColor,
            color: const Color.fromARGB(255, 231, 204, 213),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fill Claim Information',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackTextColor,
                ),
              ),
              Text(
                'Information about claim details',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGreyTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
