import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/expenses_screens/payroll_and_tax_screen/custom_key_value_column.dart';

class PayrollAndTaxScreen extends StatefulWidget {
  const PayrollAndTaxScreen({super.key});

  @override
  State<PayrollAndTaxScreen> createState() => _PayrollAndTaxScreenState();
}

class _PayrollAndTaxScreenState extends State<PayrollAndTaxScreen> {
  // List of different dates for each card
  final List<String> dates = [
    'September 2024',
    'August 2024',
    'July 2024',
    'June 2024',
    'May 2025',
    'April 2025',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          titleColor: AppColors.blackTextColor,
          title: 'Payroll and Tax',
          showBackButton: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: dates.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder:
              (context, index) => PaymentCardWidget(date: dates[index]),
        ),
      ),
    );
  }
}

class PaymentCardWidget extends StatelessWidget {
  final String date;

  const PaymentCardWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.blackTextColor,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.gridBoxColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomKeyValueColumn(
                  value: '40:00:00 hrs',
                  label: 'Total Hours',
                ),
                CustomKeyValueColumn(value: '\$800', label: 'Received'),
                CustomKeyValueColumn(value: '30 August', label: 'Paid On'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
