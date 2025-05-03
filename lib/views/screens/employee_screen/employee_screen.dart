import 'package:flutter/material.dart';
import 'package:list_project/views/constants/colors.dart';
import 'package:list_project/views/customs/appbar/custom_appbar.dart';
import 'package:list_project/views/customs/custom_widgets/tab_controller_bar.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        // child: CustomAppBar(title: 'Leaves'),
        child: CustomAppBar(
          titleColor: AppColors.blackTextColor,
          title: "Leaves",
        ),
      ),
      body: TabControllerBar(),
    );
  }
}
